// ============================================================================
// PATHOLOGY COMPOSITION - STANZBIOPSIE
// ============================================================================

Instance: CoreNeedleBiopsyComposition
InstanceOf: Composition
Usage: #example
Title: "Stanzbiopsie Mamma Pathology Report Composition"
Description: "FHIR Composition for structured core needle biopsy pathology report"
* identifier.system = "http://example.hospital.de/pathology-reports"
* identifier.value = "PATH-COMP-2025-105"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* status = #final
* type.coding[0] = http://ihe-d.de/CodeSystems/IHEXDStypeCode#PATH
* type.coding[+] = $sct#721967005 "Tissue pathology biopsy report (record artifact)"
* subject = Reference(Patient4)
* subject.display = "Sabine Becker, geb. 15.03.1971 (PAT-2025-105)"
* date = "2025-01-17T17:00:00+01:00"
* author = Reference(PathologyLabOrganization)
* author.display = "Institut für Pathologie"
* title = "Histopathologischer Befundbericht - Stanzbiopsie Mamma links"
* encounter = Reference(CoreNeedleBiopsyEncounter)
* attester.mode = #legal
* attester.party = Reference(PathologyLabOrganization)
* custodian = Reference(PathologyLabOrganization)
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActCode#PATREPE
* event.detail = Reference(CoreNeedleBiopsyReportRequest)

* section.title = "Pathologiebefundbericht"
* section.code = $loinc#11526-1 "Pathology study"
* section.entry = Reference(CoreNeedleBiopsyReport)
* section.text.status = #additional
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<h3>Klinische Angaben</h3>
<p>Herdbefund/Architekturstörung linke Brust, BI-RADS 4b. US-gestützte Stanzbiopsie.</p>

<h3>Material</h3>
<p>HG-Stanzen/Mamma, li., 5 Uhr, 5 cm von Mamille</p>

<h3>Makroskopie</h3>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>Stanzzylinder</td><td>2 Stanzzylinder, zusammen 22 mm, mittelfest, grauweißlich, Bleistiftminenstärke</td></tr>
<tr><td>Paraffinblöcke</td><td>1</td></tr>
</tbody>
</table>

<h3>Mikroskopie</h3>
<p>In beiden vollständig gebetteten, mit jeweils vier Schnittstufen aufgearbeiteten Punktionszylindern lipomatös und fibrolipomatös transformiertes Brustdrüsengewebe, das zu großen Teilen eingenommen wird von Tumorstrukturen eines mittelgroßzelligen, vordergründig trabekulär, solid und dissolut einzelzellig wachsenden invasiven Mammakarzinoms mit mäßiger Zell- und Kernpolymorphie sowie ganz vereinzelt nachweisbaren Mitosen (weniger als 5/10 HPF). Im Tumorzentrum unterschiedlich ausgeprägte Stromasklerose und herdförmige -elastose. An der Tumorperipherie schüttere bis mitteldichte rundzellig entzündliche Stromareaktion.</p>

<h3>Diagnostische Schlussfolgerung</h3>
<p><b>Diagnose:</b> Invasives Mammakarzinom NST (ICD-O 8500/3)</p>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>ICD-10</td><td>C50.5</td></tr>
<tr><td>ICD-O-3 Morphologie</td><td>M8500/3</td></tr>
<tr><td>Nottingham-Grad</td><td>Grad 2 (Score 6: Tubuli 3, Pleomorphie 2, Mitosen 1)</td></tr>
<tr><td>ER</td><td>Positiv (85% positive Tumorzellkerne)</td></tr>
<tr><td>PR</td><td>Positiv (50% positive Tumorzellkerne)</td></tr>
<tr><td>HER2</td><td>Negativ (nicht amplifiziert)</td></tr>
<tr><td>Ki-67</td><td>10%</td></tr>
<tr><td>B-Klassifikation</td><td>B5b (NHSBSP)</td></tr>
<tr><td>Relevante Mikroverkalkungen</td><td>Nein</td></tr>
<tr><td>Präparateradiogramm</td><td>Gesehen</td></tr>
<tr><td>Korrelation Mikroverkalkung</td><td>Vorliegende Verkalkung radiologisch nicht relevant (kleiner 100 Mikrometer)</td></tr>
</tbody>
</table>
</div>"
