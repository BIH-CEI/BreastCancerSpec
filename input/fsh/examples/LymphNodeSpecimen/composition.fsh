// ============================================================================
// PATHOLOGY COMPOSITION - SLN-BIOPSIE AXILLA
// ============================================================================

Instance: LymphNodeComposition
InstanceOf: Composition
Usage: #example
Title: "SLN Axilla Pathology Report Composition"
Description: "FHIR Composition for structured sentinel lymph node biopsy pathology report"
* identifier.system = "http://example.hospital.de/pathology-reports"
* identifier.value = "PATH-COMP-2025-211"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* status = #final
* type.coding[0] = http://ihe-d.de/CodeSystems/IHEXDStypeCode#PATH
* type.coding[+] = $sct#371528001 "Pathology report (record artifact)"
* subject = Reference(Patient4)
* subject.display = "Sabine Becker, geb. 15.03.1971 (PAT-2025-105)"
* date = "2025-02-10T17:00:00+01:00"
* author = Reference(PathologyLabOrganization)
* author.display = "Institut für Pathologie"
* title = "Histopathologischer Befundbericht - SLN-Biopsie Axilla links"
* encounter = Reference(LymphNodeEncounter)
* attester.mode = #legal
* attester.party = Reference(PathologyLabOrganization)
* custodian = Reference(PathologyLabOrganization)
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActCode#PATREPE
* event.detail = Reference(LymphNodeReportRequest)

// ----------------------------------------------------------------------------
// Sections nach MII Patho (Angleichung an HL7 EU Lab, Modul-Patho 2027):
//   patho-diagnostic-report      60567-5  -> MII_PR_Patho_Report
//   makroskopie                  22634-0  -> MII_PR_Patho_Macroscopic_Grouper
//   diagnostische-schlussfolgerung 22637-3 -> MII_PR_Patho_Diagnostic_Conclusion_Grouper
// Klinische Angaben, Material und Mikroskopie bleiben im Narrativ der
// Berichts-Section: für sie existiert kein Grouper, jede Section braucht aber
// eine entry-Referenz.
// ----------------------------------------------------------------------------
* section[+].title = "Pathologiebefundbericht"
* section[=].code = $loinc#60567-5 "Comprehensive pathology report panel"
* section[=].entry = Reference(LymphNodeReport)
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<h3>Klinische Angaben</h3>
<p>Invasives Mammakarzinom NST links, G2. Klinisch unauffällige Axilla (cN0). SLN-Biopsie indiziert. Keine neoadjuvante Therapie.</p>

<h3>Material</h3>
<p>Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert)</p>

<h3>Mikroskopische Beurteilung</h3>
<p>Nach Anfertigung von jeweils 5, im Abstand von 1 mm zueinander liegenden HE-gefärbten Schnittstufen der Lymphknotenhälften zeigt sich eine ausgeprägte Sinushistiozytose und mäßiggradige Follikelhyperplasie. Im Sentinellymphknoten A_1 findet sich in Schnittstufe 3 eine 1,2 mm große metastatische Absiedlung des bekannten Mammakarzinoms ohne Kapselbeziehung. Im Sentinellymphknoten A_2 sind alle Schnittstufen tumorfrei. Kein Anhalt für isolierte Tumorzellen (ITC).</p>
</div>"

* section[+].title = "Makroskopische Beurteilung"
* section[=].code = $loinc#22634-0 "Pathology report gross observation Narrative"
* section[=].entry = Reference(LymphNodeMacroscopicGrouper)
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>Zwei, 12 × 8 × 6 mm (A_1) bzw. 10 × 7 × 5 mm (A_2) durchmessende Sentinellymphknoten werden jeweils halbiert und separat eingebettet (je 1 Paraffinblock). Makroskopisch zeigen sich leicht fleckige rötlich-weiße Schnittflächen ohne Herdbefund.</p>
</div>"

* section[+].title = "Diagnostische Schlussfolgerung"
* section[=].code = $loinc#22637-3 "Pathology report final diagnosis Narrative"
* section[=].entry = Reference(LymphNodeDiagnosticConclusionGrouper)
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>Prozedur</td><td>Sentinel-Lymphknoten-Biopsie</td></tr>
<tr><td>Seitenlokalisation</td><td>Links</td></tr>
<tr><td>Untersuchte SLN</td><td>2</td></tr>
<tr><td>Befallene SLN</td><td>1</td></tr>
<tr><td>Untersuchte Non-SLN</td><td>0</td></tr>
<tr><td>Befallene Non-SLN</td><td>0</td></tr>
<tr><td>Gesamtzahl untersuchter LK</td><td>2</td></tr>
<tr><td>Gesamtzahl befallener LK</td><td>1</td></tr>
<tr><td>Makrometastasen</td><td>0</td></tr>
<tr><td>Mikrometastasen</td><td>1</td></tr>
<tr><td>ITC</td><td>0</td></tr>
<tr><td>Größte Metastasenausdehnung</td><td>1,2 mm</td></tr>
<tr><td>Extranodale Infiltration</td><td>Nicht vorhanden</td></tr>
</tbody>
</table>

<h3>pN-Staging</h3>
<p><b>pN1mi(sn)</b> — Mikrometastase in Sentinel-Lymphknoten</p>

<p><b>Kommentar:</b> In SLN #1 Nachweis einer Mikrometastase (1,2 mm) im Randsinus. SLN #2 tumorfrei in allen Schnittstufen. Keine extranodale Infiltration. Empfehlung: Besprechung in Tumorkonferenz bzgl. weiterer axillärer Therapie.</p>
</div>"
