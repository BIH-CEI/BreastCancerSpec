// Document Viewer für FHIR Pathologie-Befundberichte
// Rendert Daten direkt aus den FHIR-Ressourcen im Bundle

function formatDate(isoDate) {
  if (!isoDate) return '-';
  var d = new Date(isoDate);
  return d.toLocaleDateString('de-DE', {
    day: '2-digit',
    month: '2-digit',
    year: 'numeric',
    hour: '2-digit',
    minute: '2-digit'
  });
}

// Finde Ressource im Bundle anhand des ResourceType
function findResourceByType(bundle, resourceType) {
  for (var i = 0; i < bundle.entry.length; i++) {
    var res = bundle.entry[i].resource;
    if (res.resourceType === resourceType) {
      return res;
    }
  }
  return null;
}

// Finde Observation im Bundle anhand des LOINC-Codes
function findObservationByCode(bundle, loincCode) {
  for (var i = 0; i < bundle.entry.length; i++) {
    var res = bundle.entry[i].resource;
    if (res.resourceType === 'Observation') {
      var codings = (res.code && res.code.coding) ? res.code.coding : [];
      for (var j = 0; j < codings.length; j++) {
        if (codings[j].code === loincCode) {
          return res;
        }
      }
    }
  }
  return null;
}

// Kanonische Reihenfolge der Berichtsabschnitte.
// Sie folgt dem Slicing von DiagnosticReport.result im MII-Modul Pathologie:
// intraoperativ -> makroskopisch -> mikroskopisch -> zusätzlich -> Schlussfolgerung.
var ORDER_CLINICAL     = 10;
var ORDER_MATERIAL     = 20;
var ORDER_INTRAOP      = 30;
var ORDER_MACRO        = 40;
var ORDER_MICRO        = 50;
var ORDER_ADDITIONAL   = 60;
var ORDER_CONCLUSION   = 70;
var ORDER_UNKNOWN_TEXT = 98;
var ORDER_UNKNOWN_SECT = 99;

// LOINC-Code einer Composition.section -> Position und Überschrift.
var SECTION_BY_CODE = {
  '83321-0':  { order: ORDER_INTRAOP,    title: 'Intraoperative Beurteilung' },
  '22634-0':  { order: ORDER_MACRO,      title: 'Makroskopische Beurteilung' },
  '22635-7':  { order: ORDER_MICRO,      title: 'Mikroskopische Beurteilung' },
  '100969-5': { order: ORDER_ADDITIONAL, title: 'Zusätzliche Beobachtungen' },
  '22637-3':  { order: ORDER_CONCLUSION, title: 'Diagnostische Schlussfolgerung' }
};

// Der Berichtsabschnitt selbst wird nicht als eigener Block ausgegeben -
// sein Narrativ enthält die Blöcke ohne eigenen Grouper.
var CODE_REPORT_SECTION = '60567-5';

// Überschriften im Narrativ -> Position. Die Altbezeichnungen bleiben
// enthalten, damit auch Bundles aus früheren Fassungen korrekt einsortiert
// werden.
var HEADING_ORDER = {
  'klinische_angaben':             ORDER_CLINICAL,
  'material':                      ORDER_MATERIAL,
  'schnellschnitt':                ORDER_INTRAOP,
  'intraoperative_beurteilung':    ORDER_INTRAOP,
  'makroskopie':                   ORDER_MACRO,
  'makroskopische_beurteilung':    ORDER_MACRO,
  'mikroskopie':                   ORDER_MICRO,
  'mikroskopische_beurteilung':    ORDER_MICRO,
  'diagnose':                      ORDER_CONCLUSION,
  'diagnostische_schlussfolgerung': ORDER_CONCLUSION
};

function normalizeHeading(title) {
  return title.toLowerCase()
    .replace(/ä/g, 'ae').replace(/ö/g, 'oe').replace(/ü/g, 'ue').replace(/ß/g, 'ss')
    .replace(/[^a-z0-9]+/g, '_')
    .replace(/^_+|_+$/g, '');
}

function stripOuterDiv(divContent) {
  return divContent.replace(/<div[^>]*>/, '').replace(/<\/div>\s*$/, '').trim();
}

// Zerlegt ein Narrativ an den h3-Überschriften in Blöcke.
// Text vor der ersten Überschrift geht nicht verloren, sondern wird als
// Block ohne Titel geführt.
function splitNarrative(divContent) {
  var blocks = [];
  if (!divContent) return blocks;

  var content = stripOuterDiv(divContent);
  var parts = content.split(/<h3[^>]*>/i);

  var preamble = parts[0].trim();
  if (preamble) {
    blocks.push({ order: ORDER_UNKNOWN_TEXT, title: null, html: preamble });
  }

  for (var i = 1; i < parts.length; i++) {
    var part = parts[i];
    var endTag = part.search(/<\/h3>/i);
    if (endTag === -1) {
      // Defekte Überschrift: Inhalt trotzdem ausgeben statt ihn zu verwerfen.
      blocks.push({ order: ORDER_UNKNOWN_TEXT, title: null, html: part.trim() });
      continue;
    }

    var title = part.substring(0, endTag).trim();
    var body = part.substring(endTag + 5).trim();
    var key = normalizeHeading(title);

    blocks.push({
      order: HEADING_ORDER.hasOwnProperty(key) ? HEADING_ORDER[key] : ORDER_UNKNOWN_TEXT,
      title: title,
      html: body
    });
  }

  return blocks;
}

// Baut die Blockliste des Berichts aus allen Composition.sections auf.
function collectBlocks(composition) {
  var blocks = [];
  var sections = composition.section || [];

  for (var i = 0; i < sections.length; i++) {
    var section = sections[i];
    var div = (section.text && section.text.div) ? section.text.div : null;

    var code = null;
    if (section.code && section.code.coding && section.code.coding.length) {
      code = section.code.coding[0].code;
    }

    var known = SECTION_BY_CODE[code];
    if (known) {
      // Section mit eigenem Grouper: Narrativ am Stück unter fester Überschrift.
      blocks.push({
        order: known.order,
        title: known.title,
        html: div ? stripOuterDiv(div) : ''
      });
      continue;
    }

    // Kein bekannter Abschnittscode. Das betrifft die Berichts-Section
    // (60567-5), deren Narrativ die Blöcke ohne eigenen Grouper trägt, ebenso
    // wie Bundles aus früheren Fassungen, die den gesamten Befund in einer
    // einzigen Section führen. Enthält das Narrativ h3-Überschriften, wird es
    // zerlegt und einsortiert - sonst bleibt es ein Block mit eigenem Titel.
    if (div && /<h3[^>]*>/i.test(div)) {
      blocks = blocks.concat(splitNarrative(div));
      continue;
    }

    blocks.push({
      order: code === CODE_REPORT_SECTION ? ORDER_UNKNOWN_TEXT : ORDER_UNKNOWN_SECT,
      title: code === CODE_REPORT_SECTION ? null : (section.title || 'Weiterer Abschnitt'),
      html: div ? stripOuterDiv(div) : ''
    });
  }

  // Stabile Sortierung: gleiche Position behält die Dokumentreihenfolge.
  return blocks
    .map(function (b, idx) { return { block: b, idx: idx }; })
    .sort(function (a, b) {
      if (a.block.order !== b.block.order) return a.block.order - b.block.order;
      return a.idx - b.idx;
    })
    .map(function (w) { return w.block; });
}

function renderBundle(bundle) {
  try {
    // Finde Composition
    var composition = findResourceByType(bundle, 'Composition');
    if (!composition) {
      throw new Error('Keine Composition im Bundle gefunden');
    }

    // Finde DiagnosticReport
    var diagnosticReport = findResourceByType(bundle, 'DiagnosticReport');

    // Finde Observations nach LOINC-Code (für die Ressourcen-Links im Fuß)
    var intraoperativeGrouper = findObservationByCode(bundle, '83321-0');
    var macroscopicGrouper = findObservationByCode(bundle, '22634-0');
    var microscopicGrouper = findObservationByCode(bundle, '22635-7');
    var diagnosticConclusionGrouper = findObservationByCode(bundle, '22637-3');

    // Abschnitte aus allen Composition.sections aufbauen
    var blocks = collectBlocks(composition);

    var html = '';

    // ==================== HEADER ====================
    html += '<div class="report-header">';
    html += '<h1 class="report-title">' + (composition.title || 'Pathologischer Befundbericht') + '</h1>';

    html += '<table class="header-table">';
    html += '<tbody>';

    // Fallnummer | Status
    html += '<tr>';
    html += '<td class="header-label">Fallnummer:</td>';
    html += '<td class="header-value">' + ((composition.identifier && composition.identifier.value) ? composition.identifier.value : '-') + '</td>';
    html += '<td class="header-label">Status:</td>';
    html += '<td class="header-value status-' + (composition.status || 'unknown') + '">' + (composition.status || '-') + '</td>';
    html += '</tr>';

    // Patient
    html += '<tr>';
    html += '<td class="header-label">Patient:</td>';
    html += '<td class="header-value" colspan="3">' + ((composition.subject && composition.subject.display) ? composition.subject.display : '-') + '</td>';
    html += '</tr>';

    // Befunddatum | Institut
    html += '<tr>';
    html += '<td class="header-label">Befunddatum:</td>';
    html += '<td class="header-value">' + formatDate(composition.date) + '</td>';
    html += '<td class="header-label">Institut:</td>';
    html += '<td class="header-value">' + ((composition.author && composition.author[0] && composition.author[0].display) ? composition.author[0].display : '-') + '</td>';
    html += '</tr>';

    html += '</tbody>';
    html += '</table>';
    html += '</div>';

    // ==================== TRENNLINIE ====================
    html += '<hr class="header-separator"/>';

    // ==================== BEFUND-INHALT ====================
    // Jeder Block wird ausgegeben - auch solche mit unbekanntem Code oder
    // unbekannter Überschrift. Es darf kein Inhalt stillschweigend entfallen.
    html += '<div class="report-body">';

    if (!blocks.length) {
      html += '<p class="no-content">Das Dokument enthält keine darstellbaren Abschnitte.</p>';
    }

    for (var b = 0; b < blocks.length; b++) {
      var block = blocks[b];
      if (!block.title && !block.html) continue;

      html += '<div class="report-section">';
      if (block.title) {
        html += '<h3>' + block.title + '</h3>';
      }
      if (block.html) {
        html += '<div class="section-content">' + block.html + '</div>';
      } else {
        html += '<p class="no-content">Kein Text zu diesem Abschnitt hinterlegt.</p>';
      }
      html += '</div>';
    }

    html += '</div>'; // Ende Body

    // ==================== FOOTER ====================
    html += '<div class="report-footer">';
    html += '<hr/>';
    html += '<p class="footer-text">Generiert aus FHIR Document Bundle</p>';
    html += '<p class="footer-resources">Verwendete Ressourcen: ';

    var resourceLinks = [];
    resourceLinks.push('<a href="Composition-' + composition.id + '.html">Composition</a>');
    if (diagnosticReport) {
      resourceLinks.push('<a href="DiagnosticReport-' + diagnosticReport.id + '.html">DiagnosticReport</a>');
    }
    if (intraoperativeGrouper) {
      resourceLinks.push('<a href="Observation-' + intraoperativeGrouper.id + '.html">IntraoperativeGrouper</a>');
    }
    if (macroscopicGrouper) {
      resourceLinks.push('<a href="Observation-' + macroscopicGrouper.id + '.html">MacroscopicGrouper</a>');
    }
    if (microscopicGrouper) {
      resourceLinks.push('<a href="Observation-' + microscopicGrouper.id + '.html">MicroscopicGrouper</a>');
    }
    if (diagnosticConclusionGrouper) {
      resourceLinks.push('<a href="Observation-' + diagnosticConclusionGrouper.id + '.html">DiagnosticConclusionGrouper</a>');
    }

    html += resourceLinks.join(' | ');
    html += '</p>';
    html += '</div>';

    document.getElementById('viewer').innerHTML = html;
  } catch (err) {
    document.getElementById('viewer').innerHTML =
      '<p class="error">Fehler: ' + err.message + '</p>';
  }
}

// File input handler
document.getElementById('fileInput').addEventListener('change', function(e) {
  var reader = new FileReader();
  reader.onload = function(event) {
    try {
      var bundle = JSON.parse(event.target.result);
      renderBundle(bundle);
    } catch (err) {
      document.getElementById('viewer').innerHTML =
        '<p class="error">Fehler beim Parsen: ' + err.message + '</p>';
    }
  };
  reader.readAsText(e.target.files[0]);
});

// Select handler for examples
document.getElementById('exampleSelect').addEventListener('change', function(e) {
  var filename = e.target.value;
  if (!filename) return;

  fetch(filename)
    .then(function(response) {
      if (!response.ok) throw new Error('Datei nicht gefunden');
      return response.json();
    })
    .then(function(bundle) { renderBundle(bundle); })
    .catch(function(err) {
      document.getElementById('viewer').innerHTML =
        '<p class="error">Fehler beim Laden: ' + err.message + '</p>';
    });
});
