# Report Viewer

Select an example bundle from the dropdown or paste your own FHIR Bundle JSON to render it as a pathology report.

<div id="viewer-app">
  <div id="viewer-controls">
    <div id="control-row">
      <select id="bundle-select">
        <option value="">-- Beispiel-Bundle auswählen --</option>
        <option value="Bundle-DCISResectionDocument.json">DCIS Resektion</option>
        <option value="Bundle-InvasiveCarcinomaResectionDocument.json">Invasives Karzinom Resektion</option>
        <option value="Bundle-NeoadjuvantTherapyResectionDocument.json">Neoadjuvante Therapie Resektion</option>
        <option value="Bundle-LymphNodeSpecimensDocument.json">Lymphknoten-Präparate</option>
      </select>
      <button id="load-btn" onclick="loadExample()">Laden</button>
      <button id="paste-btn" onclick="toggleJsonInput()">JSON einfügen</button>
    </div>
    <div id="json-input-area" style="display:none;">
      <textarea id="json-input" rows="12" placeholder="FHIR Bundle JSON hier einfügen..."></textarea>
      <button id="render-btn" onclick="renderFromTextarea()">Rendern</button>
    </div>
  </div>
  <div id="report-output"></div>
</div>

<style>
#viewer-controls {
  margin-bottom: 1.5em;
}
#control-row {
  display: flex;
  gap: 0.5em;
  align-items: center;
  flex-wrap: wrap;
}
#bundle-select {
  padding: 0.4em 0.6em;
  font-size: 0.95em;
  border: 1px solid #adb5bd;
  border-radius: 4px;
  min-width: 280px;
}
#viewer-controls button {
  padding: 0.4em 1em;
  font-size: 0.95em;
  border: 1px solid #adb5bd;
  border-radius: 4px;
  background: #f8f9fa;
  cursor: pointer;
}
#viewer-controls button:hover {
  background: #e9ecef;
}
#json-input-area {
  margin-top: 0.8em;
}
#json-input {
  width: 100%;
  font-family: monospace;
  font-size: 0.85em;
  padding: 0.6em;
  border: 1px solid #adb5bd;
  border-radius: 4px;
  box-sizing: border-box;
}
#render-btn {
  margin-top: 0.4em;
}
#report-output {
  border: 1px solid #dee2e6;
  border-radius: 6px;
  background: #fff;
  min-height: 100px;
}
#report-output:empty::before {
  content: "Kein Befund geladen.";
  color: #868e96;
  padding: 2em;
  display: block;
  text-align: center;
}
.report-header {
  background: #f1f3f5;
  padding: 1em 1.5em;
  border-bottom: 1px solid #dee2e6;
  border-radius: 6px 6px 0 0;
}
.report-header h2 {
  margin: 0 0 0.3em 0;
  font-size: 1.2em;
  color: #212529;
}
.report-meta {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 0.3em 2em;
  font-size: 0.9em;
  color: #495057;
}
.report-meta .label {
  font-weight: 600;
  display: inline;
}
.report-body {
  padding: 1.5em;
}
.report-body h3 {
  color: #212529;
  border-bottom: 2px solid #228be6;
  padding-bottom: 0.3em;
  margin-top: 1.5em;
  margin-bottom: 0.8em;
  font-size: 1.05em;
}
.report-body h3:first-child {
  margin-top: 0;
}
.report-body table {
  border-collapse: collapse;
  width: 100%;
  margin: 0.8em 0;
  font-size: 0.9em;
}
.report-body table td,
.report-body table th {
  border: 1px solid #dee2e6;
  padding: 0.5em 0.8em;
  text-align: left;
}
.report-body table tr:nth-child(even) {
  background: #f8f9fa;
}
.report-body table td:first-child {
  font-weight: 600;
  white-space: nowrap;
  width: 1%;
  color: #495057;
}
.report-conclusion {
  background: #e7f5ff;
  border-left: 4px solid #228be6;
  padding: 1em 1.2em;
  margin-top: 1.2em;
  border-radius: 0 4px 4px 0;
}
.report-conclusion strong {
  display: block;
  margin-bottom: 0.3em;
}
.report-footer {
  background: #f8f9fa;
  padding: 0.8em 1.5em;
  border-top: 1px solid #dee2e6;
  border-radius: 0 0 6px 6px;
  font-size: 0.85em;
  color: #868e96;
}
.specimen-tree {
  margin: 0.8em 0;
  font-size: 0.9em;
}
.specimen-tree ul {
  list-style: none;
  padding-left: 1.5em;
  margin: 0.2em 0;
}
.specimen-tree > ul {
  padding-left: 0;
}
.specimen-tree li {
  position: relative;
  padding: 0.15em 0;
}
.specimen-tree li::before {
  content: "";
  position: absolute;
  left: -1em;
  top: 0.7em;
  width: 0.7em;
  border-bottom: 1px solid #adb5bd;
}
.specimen-tree > ul > li::before {
  display: none;
}
.specimen-node {
  display: inline-block;
  background: #e9ecef;
  padding: 0.2em 0.6em;
  border-radius: 3px;
  font-size: 0.95em;
}
.specimen-node.part { background: #d0ebff; }
.specimen-node.block { background: #fff3bf; }
.specimen-node.slide { background: #d3f9d8; }
.error-msg {
  color: #c92a2a;
  background: #fff5f5;
  border: 1px solid #ffc9c9;
  padding: 1em;
  border-radius: 4px;
  margin: 1em;
}
.section-toggle {
  cursor: pointer;
  user-select: none;
}
.section-toggle::before {
  content: "▾ ";
}
.section-toggle.collapsed::before {
  content: "▸ ";
}
.observations-detail {
  margin-top: 1em;
}
.obs-group {
  margin-bottom: 1em;
}
.obs-group summary {
  cursor: pointer;
  font-weight: 600;
  padding: 0.4em 0;
  color: #495057;
}
.obs-table {
  margin-top: 0.4em;
}
</style>

<script>
(function() {
  function esc(s) {
    if (!s) return '';
    var d = document.createElement('div');
    d.textContent = s;
    return d.innerHTML;
  }

  function findResources(bundle) {
    var map = {};
    (bundle.entry || []).forEach(function(e) {
      if (e.resource) {
        var r = e.resource;
        var key = r.resourceType + '/' + r.id;
        map[key] = r;
        if (e.fullUrl) map[e.fullUrl] = r;
      }
    });
    return map;
  }

  function resolve(ref, resMap) {
    if (!ref) return null;
    var r = ref.reference || ref;
    return resMap[r] || null;
  }

  function getDisplay(cc) {
    if (!cc) return '';
    if (cc.text) return cc.text;
    var c = (cc.coding || [])[0];
    return c ? (c.display || c.code || '') : '';
  }

  function formatDate(d) {
    if (!d) return '';
    var m = d.match(/^(\d{4})-(\d{2})-(\d{2})/);
    if (m) return m[3] + '.' + m[2] + '.' + m[1];
    return d;
  }

  function obsValue(obs) {
    if (obs.valueCodeableConcept) return getDisplay(obs.valueCodeableConcept);
    if (obs.valueQuantity) {
      var q = obs.valueQuantity;
      return q.value + (q.unit ? ' ' + q.unit : '');
    }
    if (obs.valueString) return obs.valueString;
    if (obs.valueBoolean !== undefined) return obs.valueBoolean ? 'Ja' : 'Nein';
    if (obs.valueInteger !== undefined) return '' + obs.valueInteger;
    if (obs.valueDateTime) return formatDate(obs.valueDateTime);
    if (obs.component && obs.component.length) {
      return obs.component.map(function(c) {
        var label = getDisplay(c.code);
        var val = '';
        if (c.valueCodeableConcept) val = getDisplay(c.valueCodeableConcept);
        else if (c.valueQuantity) val = c.valueQuantity.value + (c.valueQuantity.unit ? ' ' + c.valueQuantity.unit : '');
        else if (c.valueString) val = c.valueString;
        return label + ': ' + val;
      }).join('; ');
    }
    return '';
  }

  function obsLabel(obs) {
    return getDisplay(obs.code) || obs.id || '';
  }

  function buildSpecimenTree(specimens, resMap) {
    var roots = [];
    var childMap = {};
    specimens.forEach(function(sp) {
      if (sp.parent && sp.parent.length) {
        var parentRef = sp.parent[0].reference;
        if (!childMap[parentRef]) childMap[parentRef] = [];
        childMap[parentRef].push(sp);
      } else {
        roots.push(sp);
      }
    });
    function renderNode(sp) {
      var ref = sp.resourceType + '/' + sp.id;
      var children = childMap[ref] || [];
      var typeName = getDisplay(sp.type) || sp.id;
      var accession = '';
      if (sp.accessionIdentifier && sp.accessionIdentifier.value)
        accession = ' (' + esc(sp.accessionIdentifier.value) + ')';
      var cls = 'specimen-node';
      if (children.length > 0 && children.some(function(c) { return (childMap[c.resourceType + '/' + c.id] || []).length > 0; }))
        cls += ' part';
      else if (children.length > 0) cls += ' block';
      else cls += ' slide';
      if (!children.some(function(c) { return (childMap[c.resourceType + '/' + c.id] || []).length > 0; }) && children.length === 0 && sp.parent && sp.parent.length) {
        var parentRes = resolve(sp.parent[0], resMap);
        if (parentRes && parentRes.parent && parentRes.parent.length) cls = 'specimen-node slide';
        else cls = 'specimen-node block';
      }
      if (!sp.parent || !sp.parent.length) cls = 'specimen-node part';

      var html = '<li><span class="' + cls + '">' + esc(typeName) + accession + '</span>';
      if (children.length) {
        html += '<ul>';
        children.forEach(function(c) { html += renderNode(c); });
        html += '</ul>';
      }
      html += '</li>';
      return html;
    }
    if (!roots.length) return '';
    var html = '<div class="specimen-tree"><ul>';
    roots.forEach(function(r) { html += renderNode(r); });
    html += '</ul></div>';
    return html;
  }

  function buildObsTable(grouper, resMap) {
    if (!grouper || !grouper.hasMember || !grouper.hasMember.length) return '';
    var rows = '';
    grouper.hasMember.forEach(function(ref) {
      var obs = resolve(ref, resMap);
      if (!obs) return;
      var label = obsLabel(obs);
      var val = obsValue(obs);
      if (label || val) {
        rows += '<tr><td>' + esc(label) + '</td><td>' + esc(val) + '</td></tr>';
      }
    });
    if (!rows) return '';
    return '<table class="obs-table">' + rows + '</table>';
  }

  function renderBundle(bundle) {
    var output = document.getElementById('report-output');
    if (!bundle || bundle.resourceType !== 'Bundle') {
      output.innerHTML = '<div class="error-msg">Ungültiges Bundle: resourceType muss "Bundle" sein.</div>';
      return;
    }
    var resMap = findResources(bundle);
    var composition = null;
    var diagnosticReport = null;
    var patient = null;
    var specimens = [];
    var macroGrouper = null;
    var diagGrouper = null;

    (bundle.entry || []).forEach(function(e) {
      var r = e.resource;
      if (!r) return;
      if (r.resourceType === 'Composition' && !composition) composition = r;
      if (r.resourceType === 'DiagnosticReport' && !diagnosticReport) diagnosticReport = r;
      if (r.resourceType === 'Patient' && !patient) patient = r;
      if (r.resourceType === 'Specimen') specimens.push(r);
      if (r.resourceType === 'Observation') {
        var profiles = (r.meta && r.meta.profile) || [];
        profiles.forEach(function(p) {
          if (p.indexOf('macroscopic-grouper') !== -1) macroGrouper = r;
          if (p.indexOf('diagnostic-conclusion-grouper') !== -1) diagGrouper = r;
        });
      }
    });

    if (!composition) {
      output.innerHTML = '<div class="error-msg">Keine Composition im Bundle gefunden.</div>';
      return;
    }

    // Header
    var html = '<div class="report-header">';
    html += '<h2>' + esc(composition.title || 'Pathologiebefundbericht') + '</h2>';
    html += '<div class="report-meta">';

    if (composition.identifier && composition.identifier.value)
      html += '<div><span class="label">Eingangsnr.: </span>' + esc(composition.identifier.value) + '</div>';
    if (diagnosticReport && diagnosticReport.identifier) {
      var drId = (diagnosticReport.identifier || [])[0];
      if (drId && drId.value)
        html += '<div><span class="label">Befundnr.: </span>' + esc(drId.value) + '</div>';
    }
    if (composition.date)
      html += '<div><span class="label">Datum: </span>' + formatDate(composition.date) + '</div>';
    if (patient) {
      var name = '';
      if (patient.name && patient.name.length) {
        var n = patient.name[0];
        name = (n.given || []).join(' ') + ' ' + (n.family || '');
      }
      if (name.trim())
        html += '<div><span class="label">Patient: </span>' + esc(name.trim()) + '</div>';
      if (patient.birthDate)
        html += '<div><span class="label">Geb.-Datum: </span>' + formatDate(patient.birthDate) + '</div>';
      if (patient.gender) {
        var genderMap = {male: 'männlich', female: 'weiblich', other: 'divers', unknown: 'unbekannt'};
        html += '<div><span class="label">Geschlecht: </span>' + (genderMap[patient.gender] || patient.gender) + '</div>';
      }
      var patId = (patient.identifier || [])[0];
      if (patId && patId.value)
        html += '<div><span class="label">Patienten-ID: </span>' + esc(patId.value) + '</div>';
    }
    if (diagnosticReport && diagnosticReport.status)
      html += '<div><span class="label">Status: </span>' + esc(diagnosticReport.status) + '</div>';

    html += '</div></div>';

    // Body: Composition narrative
    html += '<div class="report-body">';
    var narrative = '';
    if (composition.section && composition.section.length) {
      composition.section.forEach(function(sec) {
        if (sec.text && sec.text.div) {
          var raw = sec.text.div;
          // Strip the outer <div xmlns="..."> wrapper
          raw = raw.replace(/^<div[^>]*>/, '').replace(/<\/div>\s*$/, '');
          narrative += raw;
        }
      });
    }

    if (narrative) {
      html += narrative;
    }

    // Conclusion
    if (diagnosticReport && diagnosticReport.conclusion) {
      html += '<div class="report-conclusion"><strong>Zusammenfassung</strong>' + esc(diagnosticReport.conclusion) + '</div>';
    }

    // Specimen tree
    if (specimens.length) {
      html += '<h3>Proben-Hierarchie</h3>';
      html += buildSpecimenTree(specimens, resMap);
    }

    // Structured observations (collapsible)
    if (macroGrouper || diagGrouper) {
      html += '<h3>Strukturierte Daten</h3>';
      if (macroGrouper) {
        var macroTable = buildObsTable(macroGrouper, resMap);
        if (macroTable) {
          html += '<details class="obs-group"><summary>Makroskopie</summary>' + macroTable + '</details>';
        }
        if (macroGrouper.note && macroGrouper.note.length) {
          html += '<details class="obs-group"><summary>Makroskopie — Freitext</summary><p style="padding:0.4em 0;color:#495057;">' + esc(macroGrouper.note[0].text) + '</p></details>';
        }
      }
      if (diagGrouper) {
        var diagTable = buildObsTable(diagGrouper, resMap);
        if (diagTable) {
          html += '<details class="obs-group"><summary>Diagnostische Schlussfolgerung</summary>' + diagTable + '</details>';
        }
        if (diagGrouper.note && diagGrouper.note.length) {
          html += '<details class="obs-group"><summary>Diagnostische Schlussfolgerung — Freitext</summary><p style="padding:0.4em 0;color:#495057;">' + esc(diagGrouper.note[0].text) + '</p></details>';
        }
      }
    }

    html += '</div>';

    // Footer
    html += '<div class="report-footer">';
    html += 'Bundle-ID: ' + esc(bundle.id || '–');
    if (bundle.timestamp) html += ' &middot; Timestamp: ' + formatDate(bundle.timestamp);
    html += '</div>';

    output.innerHTML = html;
  }

  window.loadExample = function() {
    var sel = document.getElementById('bundle-select');
    var val = sel.value;
    if (!val) return;
    var output = document.getElementById('report-output');
    output.innerHTML = '<div style="padding:2em;text-align:center;color:#868e96;">Lade...</div>';
    fetch(val)
      .then(function(r) {
        if (!r.ok) throw new Error('HTTP ' + r.status);
        return r.json();
      })
      .then(function(b) { renderBundle(b); })
      .catch(function(err) {
        output.innerHTML = '<div class="error-msg">Fehler beim Laden: ' + esc(err.message) + '</div>';
      });
  };

  window.toggleJsonInput = function() {
    var area = document.getElementById('json-input-area');
    area.style.display = area.style.display === 'none' ? 'block' : 'none';
  };

  window.renderFromTextarea = function() {
    var text = document.getElementById('json-input').value.trim();
    if (!text) return;
    try {
      var b = JSON.parse(text);
      renderBundle(b);
    } catch(e) {
      document.getElementById('report-output').innerHTML = '<div class="error-msg">Ungültiges JSON: ' + esc(e.message) + '</div>';
    }
  };

  // Auto-load if hash matches
  var hash = window.location.hash.replace('#', '');
  if (hash) {
    var sel = document.getElementById('bundle-select');
    for (var i = 0; i < sel.options.length; i++) {
      if (sel.options[i].value.indexOf(hash) !== -1) {
        sel.selectedIndex = i;
        window.loadExample();
        break;
      }
    }
  }
})();
</script>
