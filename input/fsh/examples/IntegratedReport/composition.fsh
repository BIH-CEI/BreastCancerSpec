// ============================================================================
// PATHOLOGY COMPOSITION - INTEGRIERTER BERICHT (BET + SLN)
// ============================================================================

Instance: IntegratedComposition
InstanceOf: Composition
Usage: #example
Title: "Integrierter Befundbericht BET + SLN Composition"
Description: "FHIR Composition für den integrierten Befundbericht BET Mamma links mit SLN-Biopsie Axilla"
* identifier.system = "http://example.hospital.de/pathology-reports"
* identifier.value = "PATH-COMP-2025-300"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* status = #final
* type.coding[0] = http://ihe-d.de/CodeSystems/IHEXDStypeCode#PATH
* type.coding[+] = $sct#371528001 "Pathology report (record artifact)"
* subject = Reference(Patient4)
* subject.display = "Sabine Becker, geb. 15.03.1971 (PAT-2025-105)"
* date = "2025-02-10T17:00:00+01:00"
* author = Reference(PathologyLabOrganization)
* author.display = "Institut für Pathologie"
* title = "Histopathologischer Befundbericht — BET Mamma links mit SLN-Biopsie Axilla"
* encounter = Reference(IntegratedEncounter)
* attester.mode = #legal
* attester.party = Reference(PathologyLabOrganization)
* custodian = Reference(PathologyLabOrganization)
* event.code = http://terminology.hl7.org/CodeSystem/v3-ActCode#PATREPE
* event.detail = Reference(IntegratedReportRequest)

// ----------------------------------------------------------------------------
// Sections nach MII Patho (Angleichung an HL7 EU Lab, Modul-Patho 2027):
//   patho-diagnostic-report      60567-5  -> MII_PR_Patho_Report
//   makroskopie                  22634-0  -> MII_PR_Patho_Macroscopic_Grouper
//   intraoperativ                83321-0  -> MII_PR_Patho_Intraoperative_Grouper
//   diagnostische-schlussfolgerung 22637-3 -> MII_PR_Patho_Diagnostic_Conclusion_Grouper
//
// Der integrierte Bericht umfasst zwei Eingangspräparate (A = BET, B = SLN).
// MII sieht dafür genau einen Grouper je Abschnitt vor; die Zuordnung der
// Einzelbefunde zu den Präparaten erfolgt über Observation.specimen (Part).
// Im Narrativ werden A und B als Zwischenüberschriften geführt.
// ----------------------------------------------------------------------------
* section[+].title = "Pathologiebefundbericht"
* section[=].code = $loinc#60567-5 "Comprehensive pathology report panel"
* section[=].entry = Reference(IntegratedReport)
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<h3>Klinische Angaben</h3>
<p>Z.n. Stanzbiopsie (E_25_105) mit Nachweis eines invasiven Mammakarzinoms NST, G2. Axilla klinisch unauffällig (cN0). BET links mit SLN-Biopsie Axilla indiziert. Drahthäkchenmarkierung des Tumors. Keine neoadjuvante Therapie. Ersterkrankung. Keine bekannte genetische Prädisposition. Präparateradiographie beigelegt.</p>

<h3>Material</h3>
<p><b>A) BET-Exzisionspräparat:</b> Mamma links, mit Haut, Drahthäkchen in situ, Fadenmarkierung lang anterior, 2x kurz distal</p>
<p><b>B) SLN-Exzisat:</b> Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert)</p>

<h3>Mikroskopische Beurteilung</h3>
<h4>A) BET-Exzisionspräparat</h4>
<p>Invasives Mammakarzinom des NST (kein spezieller Typ), maximal 18 mm messend. Das Karzinom zeigt ein überwiegend trabekuläres und solides Wachstumsmuster mit mäßiger Kern- und Zellpolymorphie. Mitosen sind vereinzelt nachweisbar (4/10 HPF). In der Tumorperipherie zeigt sich ein begleitendes duktales Carcinoma in situ (DCIS) mit intermediärem Kerngrad und überwiegend kribriformem Wachstumsmuster, maximal 8 mm. Zentrale Komedo-Nekrosen. Assoziierte Mikroverkalkungen im DCIS-Areal. Alle Resektionsränder tumorfrei. Mindestabstand invasiv: 5 mm (posterior), DCIS: 3 mm. Keine Lymphgefäßinvasion.</p>
<h4>B) SLN-Exzisat</h4>
<p>SLN #1: Im Randsinus Nachweis einer Mikrometastase, maximal 1,2 mm messend. Keine Kapseldurchbrechung. SLN #2: In allen Schnittstufen tumorfrei. Kein Anhalt für isolierte Tumorzellen (ITC).</p>
</div>"

* section[+].title = "Makroskopische Beurteilung"
* section[=].code = $loinc#22634-0 "Pathology report gross observation Narrative"
* section[=].entry = Reference(IntegratedMacroscopicGrouper)
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<h3>A) BET-Exzisionspräparat</h3>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>Größe</td><td>42 × 35 × 18 mm</td></tr>
<tr><td>Gewicht</td><td>10 g</td></tr>
<tr><td>Quadrant</td><td>Unterer äußerer Quadrant</td></tr>
<tr><td>Zifferblatt</td><td>5 Uhr</td></tr>
<tr><td>Abstand Mamille</td><td>50 mm</td></tr>
<tr><td>Lamellierung</td><td>8 Scheiben à 5 mm</td></tr>
<tr><td>Schnittfläche</td><td>Grau-weißlich, derber Herdbefund zentral in Scheibe III–V, ca. 18 mm</td></tr>
<tr><td>Paraffinblöcke</td><td>6</td></tr>
</tbody>
</table>
<h3>B) SLN-Exzisat</h3>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>SLN #1</td><td>12 × 8 × 6 mm, Patentblau-markiert, halbiert</td></tr>
<tr><td>SLN #2</td><td>10 × 7 × 5 mm, Patentblau-markiert, halbiert</td></tr>
<tr><td>Einbettung</td><td>Beide SLN vollständig eingebettet, je 1 Paraffinblock</td></tr>
</tbody>
</table>
</div>"

* section[+].title = "Intraoperative Beurteilung"
* section[=].code = $loinc#83321-0 "Pathology report intraoperative observation in Specimen Document"
* section[=].entry = Reference(IntegratedIntraoperativeGrouper)
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<h3>B) SLN-Exzisat</h3>
<p>SLN #1: Tumorfrei im Schnellschnitt. SLN #2: Tumorfrei im Schnellschnitt. → Keine Axilladissektion.</p>
<p><i>Hinweis: Mikrometastase in SLN #1 erst in den Paraffinschnittstufen nachgewiesen.</i></p>
</div>"

* section[+].title = "Diagnostische Schlussfolgerung"
* section[=].code = $loinc#22637-3 "Pathology report final diagnosis Narrative"
* section[=].entry = Reference(IntegratedDiagnosticConclusionGrouper)
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Diagnose:</b> Invasives Mammakarzinom NST (ICD-O 8500/3), pT1c pN1mi(sn)</p>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>ICD-10</td><td>C50.5</td></tr>
<tr><td>ICD-O-3 Morphologie</td><td>M8500/3</td></tr>
<tr><td>Operatives Verfahren</td><td>BET (brusterhaltende Therapie) mit SLN-Biopsie</td></tr>
<tr><td>Seitenlokalisation</td><td>Links</td></tr>
<tr><td>Fokalität</td><td>Unifokal</td></tr>
<tr><td>Max. Durchmesser invasiv</td><td>18 mm</td></tr>
<tr><td>Max. Gesamtdurchmesser</td><td>22 mm</td></tr>
<tr><td>Nottingham-Grad</td><td>Grad 2 (Score 6: Tubuli 3, Pleomorphie 2, Mitosen 1)</td></tr>
<tr><td>Assoziiertes DCIS</td><td>Vorhanden, ohne extensive intraduktale Komponente (EIC), intermediärer Kerngrad, kribriform, zentrale Komedo-Nekrosen</td></tr>
<tr><td>Tumorausdehnung</td><td>Auf Brustdrüse beschränkt</td></tr>
</tbody>
</table>

<h3>Resektionsränder</h3>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>RR-Status invasiv</td><td>Nicht befallen (R0)</td></tr>
<tr><td>Nächster tumorfreier RR</td><td>Posterior</td></tr>
<tr><td>Mindestabstand invasiv</td><td>5 mm</td></tr>
<tr><td>RR-Status DCIS</td><td>Nicht befallen</td></tr>
<tr><td>Mindestabstand DCIS</td><td>3 mm</td></tr>
</tbody>
</table>

<h3>Axilläre Lymphknoten</h3>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>Prozedur</td><td>Sentinel-Lymphknoten-Biopsie</td></tr>
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

<h3>Biomarker</h3>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>ER</td><td>Positiv (90%, stark)</td></tr>
<tr><td>PR</td><td>Positiv (60%, mäßig)</td></tr>
<tr><td>HER2 (IHC)</td><td>1+</td></tr>
<tr><td>HER2 (ISH)</td><td>Nicht amplifiziert</td></tr>
<tr><td>HER2-Gesamtstatus</td><td>Negativ</td></tr>
<tr><td>Ki-67</td><td>15%</td></tr>
</tbody>
</table>

<h3>Weitere Befunde</h3>
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\">
<tbody>
<tr><td>Lymphgefäßinvasion</td><td>Nicht nachgewiesen</td></tr>
<tr><td>Mikrokalzifikationen</td><td>In DCIS assoziiert</td></tr>
</tbody>
</table>

<h3>TNM-Staging</h3>
<p><b>pT1c pN1mi(sn)</b></p>

<p><b>Kommentar:</b> Korrelation mit dem Vorbefund der Stanzbiopsie (E_25_105): Übereinstimmende Histologie (invasives Mammakarzinom NST, G2). Biomarkerprofil bestätigt: ER+, PR+, HER2-, Luminal-A-like. SLN #1 mit Mikrometastase (1,2 mm), erst in Paraffinschnittstufen nachgewiesen (Schnellschnitt war tumorfrei). Keine extranodale Infiltration. Empfehlung: Tumorkonferenz zur weiteren Therapieplanung.</p>
</div>"
