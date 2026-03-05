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

// Parse section.text.div und extrahiere Sektionen nach h3-Überschriften
function parseSectionDiv(divContent) {
  if (!divContent) return {};

  var sections = {};
  // Entferne das äußere div-Tag
  var content = divContent.replace(/<div[^>]*>/, '').replace(/<\/div>\s*$/, '');

  // Splitte nach h3-Tags
  var parts = content.split(/<h3>/i);

  for (var i = 1; i < parts.length; i++) {
    var part = parts[i];
    var endTag = part.indexOf('</h3>');
    if (endTag === -1) continue;

    var title = part.substring(0, endTag).trim();
    var sectionContent = part.substring(endTag + 5).trim();

    // Normalisiere den Titel für den Zugriff
    var key = title.toLowerCase()
      .replace(/ä/g, 'ae').replace(/ö/g, 'oe').replace(/ü/g, 'ue')
      .replace(/\s+/g, '_');

    sections[key] = {
      title: title,
      content: sectionContent
    };
  }

  return sections;
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

    // Finde Observations nach LOINC-Code
    var macroscopicGrouper = findObservationByCode(bundle, '22634-0');
    var diagnosticConclusionGrouper = findObservationByCode(bundle, '22637-3');

    // Parse section.text.div
    var sectionDiv = null;
    var sections = composition.section || [];
    for (var i = 0; i < sections.length; i++) {
      if (sections[i].text && sections[i].text.div) {
        sectionDiv = sections[i].text.div;
        break;
      }
    }
    var parsedSections = parseSectionDiv(sectionDiv);

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

    // ==================== KLINISCHE ANGABEN (wenn vorhanden) ====================
    if (parsedSections['klinische_angaben']) {
      html += '<div class="report-section">';
      html += '<h3>Klinische Angaben</h3>';
      html += '<div class="section-content">' + parsedSections['klinische_angaben'].content + '</div>';
      html += '</div>';
    }

    // ==================== BEFUND-INHALT ====================
    html += '<div class="report-body">';

    // --- MATERIAL (wenn vorhanden) ---
    if (parsedSections['material']) {
      html += '<div class="report-section">';
      html += '<h3>Material</h3>';
      html += '<div class="section-content">' + parsedSections['material'].content + '</div>';
      html += '</div>';
    }

    // --- MAKROSKOPIE (wenn Grouper vorhanden) ---
    if (macroscopicGrouper) {
      html += '<div class="report-section">';
      html += '<h3>Makroskopie</h3>';

      if (parsedSections['makroskopie']) {
        html += '<div class="section-content">' + parsedSections['makroskopie'].content + '</div>';
      }

      html += '</div>';
    }

    // --- MIKROSKOPIE (wenn section.text vorhanden) ---
    if (parsedSections['mikroskopie']) {
      html += '<div class="report-section">';
      html += '<h3>Mikroskopie</h3>';
      html += '<div class="section-content">' + parsedSections['mikroskopie'].content + '</div>';
      html += '</div>';
    }

    // --- DIAGNOSTISCHE SCHLUSSFOLGERUNG (wenn Grouper vorhanden) ---
    if (diagnosticConclusionGrouper) {
      html += '<div class="report-section">';
      html += '<h3>Diagnostische Schlussfolgerung</h3>';

      if (parsedSections['diagnostische_schlussfolgerung']) {
        html += '<div class="section-content">' + parsedSections['diagnostische_schlussfolgerung'].content + '</div>';
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
    if (macroscopicGrouper) {
      resourceLinks.push('<a href="Observation-' + macroscopicGrouper.id + '.html">MacroscopicGrouper</a>');
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
