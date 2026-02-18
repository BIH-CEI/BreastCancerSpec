// ============================================================================
// PATHOLOGY COMPOSITION - LYMPHKNOTEN SPECIMENS
// ============================================================================

Instance: LymphNodeSpecimensComposition
InstanceOf: Composition
Usage: #example
Title: "Lymphknoten Specimens Pathology Report Composition"
Description: "FHIR Composition for structured sentinel lymph node pathology report"
* identifier.system = "http://example.hospital.de/pathology-reports"
* identifier.value = "PATH-COMP-2024-104"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* status = #final
* type.coding[0] = http://ihe-d.de/CodeSystems/IHEXDStypeCode#PATH
* type.coding[+] = $sct#721967005 "Tissue pathology biopsy report (record artifact)"
* subject = Reference(Patient1)
* subject.display = "Anna Mueller, geb. 20.04.1962 (PAT-2024-101)"
* date = "2024-07-20T08:00:00+01:00"
* author = Reference(PathologyLabOrganization)
* author.display = "Institut für Pathologie"
* title = "Histopathologischer Befundbericht - Sentinel-Lymphknoten Mammakarzinom"
* encounter = Reference(LymphNodeSpecimensEncounter)
* attester.mode = #legal
* attester.party = Reference(PathologyLabOrganization)
* custodian = Reference(PathologyLabOrganization)
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActCode#PATREPE
* event.detail = Reference(LymphNodeSpecimensReportRequest)

* section.title = "Pathologiebefundbericht"
* section.code = $loinc#11526-1 "Pathology study"
* section.entry = Reference(LymphNodeSpecimensReport)
* section.text.status = #additional
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<h3>Klinische Angaben</h3>
<p>Invasives Mammakarzinom NST, oberer äußerer Quadrant rechts, pT1c. Sentinel-Lymphknoten-Biopsie zur axillären Stadienbestimmung.</p>

<h3>Makroskopie</h3>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>Sentinel-Lymphknoten 1</td><td>12 × 8 × 6 mm, blau markiert, makroskopisch unauffällig</td></tr>
<tr><td>Sentinel-Lymphknoten 2</td><td>10 × 7 × 5 mm, blau markiert, makroskopisch unauffällig</td></tr>
</tbody>
</table>

<h3>Diagnostische Schlussfolgerung</h3>
<p><b>Diagnose:</b> 2 Sentinel-Lymphknoten tumorfrei</p>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>Untersuchte Lymphknoten</td><td>2</td></tr>
<tr><td>Befallene Lymphknoten</td><td>0</td></tr>
<tr><td>Isolierte Tumorzellen (ITC)</td><td>Nicht nachgewiesen</td></tr>
<tr><td>Mikrometastasen</td><td>Nicht nachgewiesen</td></tr>
<tr><td>Makrometastasen</td><td>Nicht nachgewiesen</td></tr>
<tr><td>Panzytokeratin IHC</td><td>Negativ</td></tr>
<tr><td>Extranoduläre Extension</td><td>Nicht anwendbar</td></tr>
<tr><td>pN-Stadium</td><td>pN0(sn)</td></tr>
</tbody>
</table>
</div>"
