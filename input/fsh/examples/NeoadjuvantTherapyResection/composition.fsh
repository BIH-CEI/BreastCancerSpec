// ============================================================================
// PATHOLOGY COMPOSITION - NEOADJUVANTE THERAPIE RESEKTION
// ============================================================================

Instance: NeoadjuvantTherapyResectionComposition
InstanceOf: Composition
Usage: #example
Title: "NAT Resektion Pathology Report Composition"
Description: "FHIR Composition for structured neoadjuvant therapy resection pathology report"
* identifier.system = "http://example.hospital.de/pathology-reports"
* identifier.value = "PATH-COMP-2024-102"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* status = #final
* type.coding[0] = http://ihe-d.de/CodeSystems/IHEXDStypeCode#PATH
* type.coding[+] = $sct#721967005 "Tissue pathology biopsy report (record artifact)"
* subject = Reference(Patient2)
* subject.display = "Maria Schmidt, geb. 11.09.1975 (PAT-2024-102)"
* date = "2024-09-26T08:00:00+01:00"
* author = Reference(PathologyLabOrganization)
* author.display = "Institut für Pathologie"
* title = "Histopathologischer Befundbericht - Mastektomie nach neoadjuvanter Chemotherapie"
* encounter = Reference(NeoadjuvantTherapyResectionEncounter)
* attester.mode = #legal
* attester.party = Reference(PathologyLabOrganization)
* custodian = Reference(PathologyLabOrganization)
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActCode#PATREPE
* event.detail = Reference(NeoadjuvantTherapyResectionReportRequest)

* section.title = "Pathologiebefundbericht"
* section.code = $loinc#11526-1 "Pathology study"
* section.entry = Reference(NeoadjuvantTherapyResectionReport)
* section.text.status = #additional
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<h3>Klinische Angaben</h3>
<p>Triple-negatives Mammakarzinom (ER-, PR-, HER2-), cT2 cN1 cM0. Neoadjuvante Chemotherapie (dose-dense EC + Paclitaxel) mit klinisch komplettem Ansprechen. Mastektomie.</p>

<h3>Makroskopie</h3>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>Präparat</td><td>Mastektomie linke Mamma</td></tr>
<tr><td>Gewicht</td><td>520 g</td></tr>
<tr><td>Maße (L × B × T)</td><td>18,0 × 14,0 × 5,0 cm</td></tr>
<tr><td>Tumorbett</td><td>15 mm, narbig-fibrotisch, Clip-Marker in situ</td></tr>
</tbody>
</table>

<h3>Diagnostische Schlussfolgerung</h3>
<p><b>Diagnose:</b> Pathologische Komplettremission (pCR) nach neoadjuvanter Chemotherapie</p>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>Prä-NAT Histologischer Typ</td><td>Invasives Karzinom NST (8500/3)</td></tr>
<tr><td>Therapieansprechen</td><td>Pathologische Komplettremission (pCR)</td></tr>
<tr><td>RCB-Klasse</td><td>0 (pCR)</td></tr>
<tr><td>Vitales Tumorgewebe</td><td>Nicht nachweisbar</td></tr>
<tr><td>Residuales DCIS</td><td>Nicht nachweisbar</td></tr>
<tr><td>Tumorbett-Veränderungen</td><td>Fibrose, chronische Entzündung, Schaumzellen</td></tr>
<tr><td>Resektionsränder</td><td>Frei (R0)</td></tr>
<tr><td>ypT-Stadium</td><td>ypT0</td></tr>
<tr><td>ypN-Stadium</td><td>ypN0</td></tr>
<tr><td>R-Klassifikation</td><td>R0</td></tr>
</tbody>
</table>
</div>"
