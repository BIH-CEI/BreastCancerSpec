// ============================================================================
// PATHOLOGY COMPOSITION - DCIS RESEKTION
// ============================================================================

Instance: DCISResectionComposition
InstanceOf: Composition
Usage: #example
Title: "DCIS Resektion Pathology Report Composition"
Description: "FHIR Composition for structured DCIS resection pathology report"
* identifier.system = "http://example.hospital.de/pathology-reports"
* identifier.value = "PATH-COMP-2024-103"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* status = #final
* type.coding[0] = http://ihe-d.de/CodeSystems/IHEXDStypeCode#PATH
* type.coding[+] = $sct#721967005 "Tissue pathology biopsy report (record artifact)"
* subject = Reference(Patient3)
* subject.display = "Petra Weber, geb. 03.12.1958 (PAT-2024-103)"
* date = "2024-06-15T08:00:00+01:00"
* author = Reference(PathologyLabOrganization)
* author.display = "Institut für Pathologie"
* title = "Histopathologischer Befundbericht - DCIS Resektion"
* encounter = Reference(DCISResectionEncounter)
* attester.mode = #legal
* attester.party = Reference(PathologyLabOrganization)
* custodian = Reference(PathologyLabOrganization)
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActCode#PATREPE
* event.detail = Reference(DCISResectionReportRequest)

* section.title = "Pathologiebefundbericht"
* section.code = $loinc#11526-1 "Pathology study"
* section.entry = Reference(DCISResectionReport)
* section.text.status = #additional
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<h3>Klinische Angaben</h3>
<p>Mammografisch detektierte Mikrokalzifikationen links oben außen. Vakuumbiopsie mit Nachweis eines DCIS. Wide Local Excision.</p>

<h3>Makroskopie</h3>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>Präparat</td><td>Wide Local Excision linke Mamma, oberer äußerer Quadrant</td></tr>
<tr><td>Gewicht</td><td>32 g</td></tr>
<tr><td>Maße (L × B × T)</td><td>4,5 × 3,2 × 2,0 cm</td></tr>
</tbody>
</table>

<h3>Diagnostische Schlussfolgerung</h3>
<p><b>Diagnose:</b> Duktales Carcinoma in situ (DCIS), high-grade, Comedo-Typ (ICD-O 8500/2)</p>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>Histologischer Typ</td><td>DCIS (8500/2)</td></tr>
<tr><td>Nukleärer Grad</td><td>3 (high-grade)</td></tr>
<tr><td>Architekturmuster</td><td>Comedo-Typ</td></tr>
<tr><td>Nekrose</td><td>Comedo-Nekrose vorhanden</td></tr>
<tr><td>DCIS-Ausdehnung</td><td>25 mm</td></tr>
<tr><td>Resektionsränder</td><td>Frei, nächster Rand 3 mm</td></tr>
<tr><td>Kalzifikationen</td><td>Vorhanden</td></tr>
<tr><td>Mikroinvasion</td><td>Nicht nachweisbar</td></tr>
<tr><td>Begleitende lobuläre Neoplasie</td><td>Nicht nachweisbar</td></tr>
</tbody>
</table>
</div>"
