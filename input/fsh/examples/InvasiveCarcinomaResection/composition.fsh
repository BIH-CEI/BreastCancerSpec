// ============================================================================
// PATHOLOGY COMPOSITION - INVASIVES KARZINOM RESEKTION
// ============================================================================

Instance: InvasiveCarcinomaResectionComposition
InstanceOf: Composition
Usage: #example
Title: "Invasives Karzinom Resektion Pathology Report Composition"
Description: "FHIR Composition for structured invasive carcinoma resection pathology report"
* identifier.system = "http://example.hospital.de/pathology-reports"
* identifier.value = "PATH-COMP-2024-101"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* status = #final
* type.coding[0] = http://ihe-d.de/CodeSystems/IHEXDStypeCode#PATH
* type.coding[+] = $sct#721967005 "Tissue pathology biopsy report (record artifact)"
* subject = Reference(Patient1)
* subject.display = "Anna Mueller, geb. 20.04.1962 (PAT-2024-101)"
* date = "2024-07-20T08:00:00+01:00"
* author = Reference(PathologyLabOrganization)
* author.display = "Institut für Pathologie"
* title = "Histopathologischer Befundbericht - Invasives Mammakarzinom Resektion"
* encounter = Reference(InvasiveCarcinomaResectionEncounter)
* attester.mode = #legal
* attester.party = Reference(PathologyLabOrganization)
* custodian = Reference(PathologyLabOrganization)
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActCode#PATREPE
* event.detail = Reference(InvasiveCarcinomaResectionReportRequest)

* section.title = "Pathologiebefundbericht"
* section.code = $loinc#11526-1 "Pathology study"
* section.entry = Reference(InvasiveCarcinomaResectionReport)
* section.text.status = #additional
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<h3>Klinische Angaben</h3>
<p>Stanzbioptisch gesichertes invasives Mammakarzinom NST im oberen äußeren Quadranten rechts. Brusterhaltende Therapie mit Sentinel-Lymphknoten-Biopsie.</p>

<h3>Makroskopie</h3>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>Präparat</td><td>Lumpektomie rechte Mamma, oberer äußerer Quadrant</td></tr>
<tr><td>Gewicht</td><td>45 g</td></tr>
<tr><td>Maße (L × B × T)</td><td>5,0 × 3,5 × 2,5 cm</td></tr>
<tr><td>Tumorgröße (makroskopisch)</td><td>18 mm</td></tr>
</tbody>
</table>

<h3>Diagnostische Schlussfolgerung</h3>
<p><b>Diagnose:</b> Invasives Karzinom NST (ICD-O 8500/3)</p>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>Histologischer Typ</td><td>Invasives Karzinom NST (8500/3)</td></tr>
<tr><td>Nottingham-Grad</td><td>Grad 2 (Score 6: Tubuli 2, Pleomorphie 2, Mitosen 2)</td></tr>
<tr><td>ER</td><td>Positiv (90%)</td></tr>
<tr><td>PR</td><td>Positiv (60%)</td></tr>
<tr><td>HER2 (IHC)</td><td>Negativ (Score 1+)</td></tr>
<tr><td>Ki-67</td><td>15%</td></tr>
<tr><td>Tumorgröße (invasiv)</td><td>18 mm</td></tr>
<tr><td>Begleitendes DCIS</td><td>5 mm</td></tr>
<tr><td>Lymphovaskuläre Invasion</td><td>Nicht nachgewiesen</td></tr>
<tr><td>Perineurale Invasion</td><td>Nicht nachgewiesen</td></tr>
<tr><td>Resektionsränder</td><td>Frei (R0), nächster Rand 5 mm</td></tr>
<tr><td>pT-Stadium</td><td>pT1c</td></tr>
<tr><td>pN-Stadium</td><td>pN0(sn)</td></tr>
<tr><td>R-Klassifikation</td><td>R0</td></tr>
</tbody>
</table>
</div>"
