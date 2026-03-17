# Artifacts Summary - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Abstand von Mamille BET](Observation-BreastResectionMacroDistanceNipple.md) | Abstand des Tumors von der Mamille |
| [Anhängendes Gewebe - BET](Observation-BreastResectionAttachedTissue.md) | Art des anhängenden Gewebes am Präparat |
| [Anzahl Paraffinblöcke BET](Observation-BreastResectionMacroBlockCount.md) | Anzahl der angefertigten Paraffinblöcke |
| [Anzahl Paraffinblöcke Stanzbiopsie](Observation-CoreNeedleBiopsyMacroscopicBlockCount.md) | Anzahl der erstellten Paraffinblöcke |
| [Anzahl Stanzzylinder](Observation-CoreNeedleBiopsyMacroscopicCylinderCount.md) | Anzahl der eingesendeten Stanzzylinder |
| [Anzahl befallener Non-SLN](Observation-LymphNodeNonSLNPositive.md) | Anzahl der befallenen (nicht-Sentinel) axillären Lymphknoten: 0 |
| [Anzahl befallener SLN](Observation-LymphNodeSLNPositive.md) | Anzahl der befallenen Sentinel-Lymphknoten: 1 |
| [Anzahl untersuchter Non-SLN](Observation-LymphNodeNonSLNExamined.md) | Anzahl der untersuchten (nicht-Sentinel) axillären Lymphknoten: 0 |
| [Anzahl untersuchter SLN](Observation-LymphNodeSLNExamined.md) | Anzahl der untersuchten Sentinel-Lymphknoten: 2 |
| [Assoziiertes DCIS - BET](Observation-BreastResectionAssociatedDCIS.md) | Vorhandensein eines assoziierten DCIS |
| [B-Klassifikation - Stanzbiopsie](Observation-CoreNeedleBiopsyBClassification.md) | B-Classification according to NHSBSP |
| [BET Mamma Anforderung](ServiceRequest-BreastResectionReportRequest.md) | Anforderung für pathologische Aufarbeitung eines BET-Exzisionspräparats der linken Mamma |
| [BET Mamma Pathology Report Composition](Composition-BreastResectionComposition.md) | FHIR Composition for structured breast resection pathology report |
| [BET-Exzisionspräparat (Einsendespecimen)](Specimen-BreastResectionSpecimenPart.md) | BET-Exzisionspräparat Mamma links, mit Haut, Drahthäkchen, 42x35x18mm, 10g |
| [Befundmarkierung](Observation-BreastResectionSpecimenMarking.md) | Art der Befundmarkierung am Präparat |
| [Bildgebungsbefund SLN-Biopsie](DiagnosticReport-LymphNodeImagingReport.md) | Bildgebungsbefund als SupportingInfo für die SLN-Biopsie |
| [Brustkrebsvorgeschichte](Observation-BreastResectionCancerHistory.md) | Anamnese hinsichtlich Brustkrebsvorgeschichte |
| [CK-18-IHC Reagenz BET](Substance-BreastResectionSubstanceCK18.md) | Zytokeratin 18 Antikörper für Immunhistochemie |
| [CK18-IHC Schnitt BET (Block01)](Specimen-BreastResectionSpecimenSlideCK18-01.md) | Schnitt für Zytokeratin 18 Immunhistochemie |
| [DCIS Architektur - BET](Observation-BreastResectionDCISArchitecture.md) | Wachstumsmuster des assoziierten DCIS |
| [DCIS Kerngrading - BET](Observation-BreastResectionDCISGrade.md) | Kerngrading des assoziierten DCIS |
| [DCIS Nekrosen - BET](Observation-BreastResectionDCISNecrosis.md) | Nekrosen im DCIS-Areal |
| [Diagnostic Conclusion Grouper - BET Mamma](Observation-BreastResectionDiagnosticConclusionGrouper.md) | Grouper for all diagnostic conclusion findings in breast resection |
| [Diagnostic Conclusion Grouper - SLN Axilla](Observation-LymphNodeDiagnosticConclusionGrouper.md) | Grouper for all diagnostic conclusion findings in sentinel lymph node biopsy |
| [Diagnostic Conclusion Grouper - Stanzbiopsie](Observation-CoreNeedleBiopsyDiagnosticConclusionGrouper.md) | Grouper for all diagnostic conclusion findings in core needle biopsy |
| [Document Bundle - BET Mamma](Bundle-BreastResectionDocument.md) | FHIR Document Bundle für den vollständigen BET-Befundbericht |
| [Document Bundle - SLN-Biopsie Axilla](Bundle-LymphNodeDocument.md) | FHIR Document Bundle für den vollständigen SLN-Befundbericht |
| [Document Bundle - Stanzbiopsie Mamma](Bundle-CoreNeedleBiopsyDocument.md) | FHIR Document Bundle für den vollständigen Stanzbiopsie-Befundbericht |
| [E-Cadherin-IHC Reagenz BET](Substance-BreastResectionSubstanceECadherin.md) | E-Cadherin-Antikörper für Immunhistochemie |
| [E-Cadherin-IHC Schnitt BET (Block01)](Specimen-BreastResectionSpecimenSlideECad-01.md) | Schnitt für E-Cadherin Immunhistochemie |
| [ER Färbeintensität - BET](Observation-BreastResectionERIntensity.md) | Färbeintensität der ER-Immunhistochemie |
| [ER-IHC Reagenz BET](Substance-BreastResectionSubstanceER.md) | Östrogenrezeptor-Antikörper für Immunhistochemie |
| [ER-IHC Reagenz Stanzbiopsie](Substance-CoreNeedleBiopsySubstanceER.md) | Östrogenrezeptor-Antikörper für Immunhistochemie |
| [ER-IHC Schnitt 01 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenSlideER01.md) | Schnitt 1 für Östrogenrezeptor-Immunhistochemie |
| [ER-IHC Schnitt 02 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenSlideER02.md) | Schnitt 2 für Östrogenrezeptor-Immunhistochemie |
| [ER-IHC Schnitt BET (Block01)](Specimen-BreastResectionSpecimenSlideER01.md) | Schnitt für Östrogenrezeptor-Immunhistochemie |
| [Elston-Ellis Summenscore - BET](Observation-BreastResectionElstonEllisScore.md) | Elston-Ellis summary score (3+2+1=6) |
| [Encounter für BET Mamma](Encounter-BreastResectionEncounter.md) | Stationärer Encounter für brusterhaltende Therapie im Brustzentrum |
| [Encounter für SLN-Biopsie Axilla](Encounter-LymphNodeEncounter.md) | Stationärer Encounter für Sentinel-Lymphknoten-Biopsie der linken Axilla (gleicher OP-Tag wie BET) |
| [Encounter für Stanzbiopsie Mamma](Encounter-CoreNeedleBiopsyEncounter.md) | Ambulanter Encounter für US-gestützte Stanzbiopsie in der Screeningeinheit |
| [Estrogen Receptor Percentage - Stanzbiopsie](Observation-CoreNeedleBiopsyERPercentage.md) | Percentage of ER positive tumor cell nuclei |
| [Estrogen Receptor Status - Stanzbiopsie](Observation-CoreNeedleBiopsyERStatus.md) | Estrogen receptor status by immunohistochemistry |
| [Extranodale Infiltration](Observation-LymphNodeExtranodalExtension.md) | Extranodale Infiltration durch LK-Metastase: Nicht vorhanden |
| [Fokalität - BET](Observation-BreastResectionFocality.md) | Fokalität des Tumors |
| [Genetische Prädisposition](Observation-BreastResectionGeneticPredisposition.md) | Angabe zur genetischen Prädisposition |
| [Gesamtlänge Stanzzylinder](Observation-CoreNeedleBiopsyMacroscopicTotalLength.md) | Gesamtlänge aller Stanzzylinder zusammen |
| [Gesamtzahl befallener LK](Observation-LymphNodeTotalPositive.md) | Gesamtzahl befallener Lymphknoten: 1 |
| [Gesamtzahl untersuchter LK](Observation-LymphNodeTotalExamined.md) | Gesamtzahl untersuchter Lymphknoten: 2 |
| [Gewicht BET](Observation-BreastResectionMacroWeight.md) | Gewicht des BET-Exzisionspräparats |
| [Größte Metastasenausdehnung](Observation-LymphNodeLargestMetSize.md) | Ausdehnung der größten metastatischen Infiltration: 1.2 mm |
| [HE-Schnitt 01 BET - Tumor (Block01)](Specimen-BreastResectionSpecimenSlideHE01.md) | HE-gefärbter Schnitt des Tumorareals, Scheibe III, Schnittstufe 1 |
| [HE-Schnitt 01 BET - Tumor (Block02)](Specimen-BreastResectionSpecimenSlideBlock02-HE01.md) | HE-gefärbter Schnitt des Tumorareals, Scheibe V, Schnittstufe 1 |
| [HE-Schnitt 01 SLN #1 (Schnittstufe 1)](Specimen-LymphNodeSpecimenSlideHE01.md) | HE-gefärbter Schnitt des SLN #1, Schnittstufe 1 |
| [HE-Schnitt 01 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenSlideHE01.md) | Hämatoxylin-Eosin gefärbter Schnitt, Schnittstufe 1 |
| [HE-Schnitt 02 BET - Tumor (Block01)](Specimen-BreastResectionSpecimenSlideHE02.md) | HE-gefärbter Schnitt des Tumorareals, Scheibe III, Schnittstufe 2 |
| [HE-Schnitt 02 BET - Tumor (Block02)](Specimen-BreastResectionSpecimenSlideBlock02-HE02.md) | HE-gefärbter Schnitt des Tumorareals, Scheibe V, Schnittstufe 2 |
| [HE-Schnitt 02 SLN #1 (Schnittstufe 2)](Specimen-LymphNodeSpecimenSlideHE02.md) | HE-gefärbter Schnitt des SLN #1, Schnittstufe 2 |
| [HE-Schnitt 02 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenSlideHE02.md) | Hämatoxylin-Eosin gefärbter Schnitt, Schnittstufe 2 |
| [HE-Schnitt 03 SLN #2 (Schnittstufe 1)](Specimen-LymphNodeSpecimenSlideHE03.md) | HE-gefärbter Schnitt des SLN #2, Schnittstufe 1 |
| [HE-Schnitt 03 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenSlideHE03.md) | Hämatoxylin-Eosin gefärbter Schnitt, Schnittstufe 3 |
| [HE-Schnitt 04 SLN #2 (Schnittstufe 2)](Specimen-LymphNodeSpecimenSlideHE04.md) | HE-gefärbter Schnitt des SLN #2, Schnittstufe 2 |
| [HE-Schnitt 04 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenSlideHE04.md) | Hämatoxylin-Eosin gefärbter Schnitt, Schnittstufe 4 |
| [HE-Schnitt BET - RR inferior (Block04)](Specimen-BreastResectionSpecimenSlideRR-Inferior-HE01.md) | HE-gefärbter Schnitt Resektionsrand inferior |
| [HE-Schnitt BET - RR lateral (Block06)](Specimen-BreastResectionSpecimenSlideRR-Lateral-HE01.md) | HE-gefärbter Schnitt Resektionsrand lateral, Scheibe VIII |
| [HE-Schnitt BET - RR medial (Block05)](Specimen-BreastResectionSpecimenSlideRR-Medial-HE01.md) | HE-gefärbter Schnitt Resektionsrand medial, Scheibe I |
| [HE-Schnitt BET - RR superior (Block03)](Specimen-BreastResectionSpecimenSlideRR-Superior-HE01.md) | HE-gefärbter Schnitt Resektionsrand superior |
| [HER2 Amplifikation (ISH) - BET](Observation-BreastResectionHER2ISH.md) | HER2-Amplifikationsstatus per In-situ-Hybridisierung |
| [HER2 Gesamtstatus - BET](Observation-BreastResectionHER2Overall.md) | HER2-Gesamtstatus basierend auf IHC und ISH |
| [HER2 ISH - Stanzbiopsie](Observation-CoreNeedleBiopsyHER2ISH.md) | HER2 status by in-situ hybridization (B-DISH) |
| [HER2-B-DISH Reagenz Stanzbiopsie](Substance-CoreNeedleBiopsySubstanceHER2ISH.md) | HER2 Dual ISH Sonden-Kit |
| [HER2-B-DISH Schnitt 01 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenSlideHER2-01.md) | Schnitt 1 für HER2 Bright-field Dual In-Situ Hybridization |
| [HER2-B-DISH Schnitt 02 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenSlideHER2-02.md) | Schnitt 2 für HER2 Bright-field Dual In-Situ Hybridization |
| [HER2-IHC Reagenz BET](Substance-BreastResectionSubstanceHER2IHC.md) | HER2-Antikörper für Immunhistochemie |
| [HER2-IHC Reagenz Stanzbiopsie](Substance-CoreNeedleBiopsySubstanceHER2IHC.md) | HER2-Antikörper für Immunhistochemie |
| [HER2-IHC Schnitt 01 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenSlideHER2IHC-01.md) | Schnitt 1 für HER2 Immunhistochemie |
| [HER2-IHC Schnitt 02 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenSlideHER2IHC-02.md) | Schnitt 2 für HER2 Immunhistochemie |
| [HER2-IHC Schnitt BET (Block01)](Specimen-BreastResectionSpecimenSlideHER2IHC01.md) | Schnitt für HER2-Immunhistochemie |
| [HER2-Score (IHC) - BET](Observation-BreastResectionHER2IHC.md) | HER2-Score per Immunhistochemie |
| [Histological Type ICD-O-3 - Stanzbiopsie](Observation-CoreNeedleBiopsyHistologicalTypeICDO3.md) | Histological type according to ICD-O-3 classification |
| [Histologischer Tumortyp - BET](Observation-BreastResectionHistologicalType.md) | Histologischer Typ nach WHO/ICD-O-3 |
| [ITC-befallene LK](Observation-LymphNodeITCCount.md) | Gesamtzahl ausschließlich ITC-befallener Lymphknoten: 0 |
| [Invasives Karzinom - BET](Observation-BreastResectionInvasiveCarcinoma.md) | Vorhandensein eines invasiven Karzinoms |
| [Kernpleomorphie-Score - BET](Observation-BreastResectionNuclearPleomorphism.md) | Nuclear pleomorphism score by Nottingham |
| [Ki-67 Index - BET](Observation-BreastResectionKi67.md) | Ki-67 Proliferationsindex |
| [Ki-67 Index - Stanzbiopsie](Observation-CoreNeedleBiopsyKi67.md) | Ki-67 proliferation index |
| [Ki-67-IHC Reagenz BET](Substance-BreastResectionSubstanceKi67.md) | Ki-67-Antikörper für Immunhistochemie |
| [Ki-67-IHC Reagenz Stanzbiopsie](Substance-CoreNeedleBiopsySubstanceKi67.md) | Ki-67-Antikörper für Immunhistochemie |
| [Ki67-IHC Schnitt 01 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenSlideKi67-01.md) | Schnitt 1 für Ki-67 Immunhistochemie |
| [Ki67-IHC Schnitt 02 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenSlideKi67-02.md) | Schnitt 2 für Ki-67 Immunhistochemie |
| [Ki67-IHC Schnitt BET (Block01)](Specimen-BreastResectionSpecimenSlideKi67-01.md) | Schnitt für Ki-67 Immunhistochemie |
| [Kommentar - BET](Observation-BreastResectionComment.md) | Freitextkommentar zum Befund |
| [Kommentar - SLN](Observation-LymphNodeComment.md) | Kommentar zum SLN-Befund |
| [LK OP Prozedur - SLN](Observation-LymphNodeProcedure.md) | Art der Lymphknoten-Operation: Sentinel-Lymphknoten-Biopsie |
| [Lymphgefäßinvasion - BET](Observation-BreastResectionLVI.md) | Lymphovaskuläre Invasion |
| [Makrometastatisch befallene LK](Observation-LymphNodeMacroMetCount.md) | Gesamtzahl makrometastatisch befallener Lymphknoten: 0 |
| [Makroskopische Befunde Grouper BET](Observation-BreastResectionMacroscopicGrouper.md) | Gruppierung aller makroskopischen Messungen des BET-Exzisionspräparats |
| [Makroskopische Befunde Grouper SLN](Observation-LymphNodeMacroscopicGrouper.md) | Gruppierung aller makroskopischen Messungen des SLN-Exzisats |
| [Makroskopische Befunde Grouper Stanzbiopsie](Observation-CoreNeedleBiopsyMacroscopicGrouper.md) | Gruppierung aller makroskopischen Messungen der Stanzzylinder |
| [Mammakarzinom-Diagnose (SLN-Indikation)](Condition-LymphNodeDiagnosisConfirmed.md) | Bestätigte Diagnose eines invasiven Mammakarzinoms, Indikation zur Sentinel-Lymphknoten-Biopsie |
| [Mammakarzinom-Diagnose Stanzbiopsie](Condition-CoreNeedleBiopsyDiagnosisPreOp.md) | Diagnose eines Herdbefunds der linken Brust, BI-RADS 4b, Indikation zur Stanzbiopsie |
| [Mammakarzinom-Diagnose bestätigt](Condition-BreastResectionDiagnosisConfirmed.md) | Bestätigte Diagnose eines invasiven Mammakarzinoms nach Stanzbiopsie, Indikation zur BET |
| [Mammografie/Ultraschall-Befund](DiagnosticReport-CoreNeedleBiopsyImagingReport.md) | Bildgebungsbefund als SupportingInfo für die Stanzbiopsie |
| [Mammografie/Ultraschall-Befund BET](DiagnosticReport-BreastResectionImagingReport.md) | Bildgebungsbefund als SupportingInfo für die BET |
| [Materialart - BET](Observation-BreastResectionMaterialType.md) | Art des eingesendeten Materials |
| [Max Durchmesser invasiv - BET](Observation-BreastResectionMaxDiameterInvasive.md) | Maximaler Durchmesser der invasiven Komponente |
| [Max Gesamtdurchmesser - BET](Observation-BreastResectionMaxOverallDiameter.md) | Maximaler Gesamtdurchmesser des Tumors inkl. DCIS |
| [Mikrokalzifikationen - BET](Observation-BreastResectionMicrocalcification.md) | Vorhandensein von Mikrokalzifikationen |
| [Mikrometastatisch befallene LK](Observation-LymphNodeMicroMetCount.md) | Gesamtzahl mikrometastatisch befallener Lymphknoten: 1 |
| [Mikroverkalkung-Korrelation - Stanzbiopsie](Observation-CoreNeedleBiopsyMicrocalcificationCorrelation.md) | Correlation of microcalcifications with radiological findings |
| [Mindestabstand invasiv - BET](Observation-BreastResectionMinDistanceInvasive.md) | Mindestabstand der invasiven Komponente zum Resektionsrand |
| [Mindestabstand nichtinvasiv - BET](Observation-BreastResectionMinDistanceNonInvasive.md) | Mindestabstand der nichtinvasiven Komponente (DCIS) zum Resektionsrand |
| [Mitoserate-Score - BET](Observation-BreastResectionMitoticRateScore.md) | Mitotic rate score by Nottingham |
| [Mitosezahl - BET](Observation-BreastResectionMitosisCount.md) | Absolute Mitosezahl pro 10 HPF |
| [Mitotic Rate Score - Stanzbiopsie](Observation-CoreNeedleBiopsyMitoticRate.md) | Mitotic rate score by Nottingham |
| [Morphologie Freitext - BET](Observation-BreastResectionMorphologyFreeText.md) | Freitextbeschreibung der Tumormorphologie |
| [Morphology Free Text - Stanzbiopsie](Observation-CoreNeedleBiopsyMorphologyFreeText.md) | Free text description of tumor morphology |
| [Nichtinvasive Läsion - BET](Observation-BreastResectionNonInvasiveLesion.md) | Vorhandensein einer nichtinvasiven Läsion |
| [Nottingham Grade - Stanzbiopsie](Observation-CoreNeedleBiopsyNottinghamGrade.md) | Nottingham histologic grade |
| [Nottingham Summary Score - Stanzbiopsie](Observation-CoreNeedleBiopsyNottinghamSummaryScore.md) | Elston-Ellis summary score (3+2+1=6) |
| [Nottingham-Grad - BET](Observation-BreastResectionNottinghamGrade.md) | Nottingham histologic grade |
| [Nuclear Pleomorphism Score - Stanzbiopsie](Observation-CoreNeedleBiopsyNuclearPleomorphism.md) | Nuclear pleomorphism score by Nottingham |
| [Nächster tumorfreier Resektionsrand - BET](Observation-BreastResectionClosestMargin.md) | Lokalisation des nächsten tumorfreien Resektionsrands |
| [Operatives Verfahren - BET](Observation-BreastResectionOperativeProcedure.md) | Art des operativen Verfahrens |
| [PR Färbeintensität - BET](Observation-BreastResectionPRIntensity.md) | Färbeintensität der PR-Immunhistochemie |
| [PR-IHC Reagenz BET](Substance-BreastResectionSubstancePR.md) | Progesteronrezeptor-Antikörper für Immunhistochemie |
| [PR-IHC Reagenz Stanzbiopsie](Substance-CoreNeedleBiopsySubstancePR.md) | Progesteronrezeptor-Antikörper für Immunhistochemie |
| [PR-IHC Schnitt 01 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenSlidePR01.md) | Schnitt 1 für Progesteronrezeptor-Immunhistochemie |
| [PR-IHC Schnitt 02 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenSlidePR02.md) | Schnitt 2 für Progesteronrezeptor-Immunhistochemie |
| [PR-IHC Schnitt BET (Block01)](Specimen-BreastResectionSpecimenSlidePR01.md) | Schnitt für Progesteronrezeptor-Immunhistochemie |
| [Paraffinblock 01 BET - Tumor zentral (Scheibe III)](Specimen-BreastResectionSpecimenBlock01.md) | Paraffineinbettung des zentralen Tumorareals, Scheibe III, inkl. RR anterior/posterior |
| [Paraffinblock 01 SLN #1](Specimen-LymphNodeSpecimenBlock01.md) | Paraffineinbettung SLN #1, halbiert, enthält Mikrometastase |
| [Paraffinblock 01 Stanzbiopsie](Specimen-CoreNeedleBiopsySpecimenBlock01.md) | Paraffineinbettung der Stanzzylinder Block 01 |
| [Paraffinblock 02 BET - Tumor zentral (Scheibe V)](Specimen-BreastResectionSpecimenBlock02.md) | Paraffineinbettung des zentralen Tumorareals, Scheibe V, inkl. RR anterior/posterior |
| [Paraffinblock 02 SLN #2](Specimen-LymphNodeSpecimenBlock02.md) | Paraffineinbettung SLN #2, halbiert, tumorfrei |
| [Paraffinblock 03 BET - RR superior](Specimen-BreastResectionSpecimenBlock03.md) | Paraffineinbettung Resektionsrand superior |
| [Paraffinblock 04 BET - RR inferior](Specimen-BreastResectionSpecimenBlock04.md) | Paraffineinbettung Resektionsrand inferior |
| [Paraffinblock 05 BET - RR medial (Scheibe I)](Specimen-BreastResectionSpecimenBlock05.md) | Paraffineinbettung Resektionsrand medial, Scheibe I |
| [Paraffinblock 06 BET - RR lateral (Scheibe VIII)](Specimen-BreastResectionSpecimenBlock06.md) | Paraffineinbettung Resektionsrand lateral, Scheibe VIII |
| [Pathologiebericht BET Mamma](DiagnosticReport-BreastResectionReport.md) | Pathologiebericht nach brusterhaltender Therapie der linken Mamma |
| [Pathologiebericht SLN-Biopsie Axilla](DiagnosticReport-LymphNodeReport.md) | Pathologiebericht nach Sentinel-Lymphknoten-Biopsie der linken Axilla |
| [Pathologiebericht Stanzbiopsie Mamma](DiagnosticReport-CoreNeedleBiopsyReport.md) | Pathologiebericht nach US-gestützter Stanzbiopsie der linken Mamma |
| [Pathologielabor](Organization-PathologyLabOrganization.md) | Institut für Pathologie für alle pathologischen Befunde |
| [Pathologin](Practitioner-PathologistPractitioner.md) | Durchführende Pathologin für alle pathologischen Befunde |
| [Patientin 4 - Stanzbiopsie Mamma](Patient-Patient4.md) | Patientin mit Herdbefund linke Brust (BI-RADS 4b), erhält US-gestützte Stanzbiopsie |
| [Proben limitiert auswertbar](Observation-BreastResectionSpecimenLimited.md) | Angabe ob die Probe limitiert auswertbar ist |
| [Proben limitiert auswertbar - SLN](Observation-LymphNodeSpecimenLimited.md) | Angabe ob die Probe limitiert auswertbar ist |
| [Probengröße 1 (Länge) BET](Observation-BreastResectionMacroLength.md) | Maximale Länge des BET-Exzisionspräparats |
| [Probengröße 2 (Breite) BET](Observation-BreastResectionMacroWidth.md) | Breite des BET-Exzisionspräparats |
| [Probengröße 3 (Tiefe) BET](Observation-BreastResectionMacroDepth.md) | Tiefe des BET-Exzisionspräparats |
| [Progesterone Receptor Percentage - Stanzbiopsie](Observation-CoreNeedleBiopsyPRPercentage.md) | Percentage of PR positive tumor cell nuclei |
| [Progesterone Receptor Status - Stanzbiopsie](Observation-CoreNeedleBiopsyPRStatus.md) | Progesterone receptor status by immunohistochemistry |
| [Progesteronrezeptor Prozent - BET](Observation-BreastResectionPRPercentage.md) | Prozentsatz PR-positiver Tumorzellkerne |
| [Progesteronrezeptor-Status - BET](Observation-BreastResectionPRStatus.md) | Progesteronrezeptor-Status per Immunhistochemie |
| [Präparateradiogramm - Stanzbiopsie](Observation-CoreNeedleBiopsySpecimenRadiography.md) | Specimen radiography reviewed |
| [Präparateradiographie klinisch](Observation-BreastResectionSpecimenRadiographyClinical.md) | Angabe ob eine Präparateradiographie beigelegt wurde |
| [Präsentationsmodus](Observation-BreastResectionPresentationMode.md) | Präsentationsmodus des Präparats |
| [Quadrant BET](Observation-BreastResectionMacroQuadrant.md) | Quadrantenlokalisation des Tumors |
| [QuestionnaireResponse - BET Mamma](QuestionnaireResponse-QuestionnaireResponseBreastResection.md) | QuestionnaireResponse für BET Mamma mit allen Befunden |
| [QuestionnaireResponse - SLN-Biopsie Axilla](QuestionnaireResponse-QuestionnaireResponseLymphNode.md) | QuestionnaireResponse für SLN-Biopsie Axilla mit allen Befunden |
| [QuestionnaireResponse - Stanzbiopsie Mamma](QuestionnaireResponse-QuestionnaireResponseCoreNeedleBiopsy.md) | QuestionnaireResponse für Stanzbiopsie Mamma mit allen Befunden |
| [Radiologische Ausdehnung](Observation-BreastResectionRadiologicalExtent.md) | Radiologisch gemessene Ausdehnung des Tumors |
| [Relevante Mikroverkalkungen - Stanzbiopsie](Observation-CoreNeedleBiopsyMicrocalcification.md) | Presence of relevant microcalcifications |
| [Resektionsrandstatus invasiv - BET](Observation-BreastResectionMarginStatusInvasive.md) | Resektionsrandstatus der invasiven Komponente |
| [Resektionsrandstatus nichtinvasiv - BET](Observation-BreastResectionMarginStatusNonInvasive.md) | Resektionsrandstatus der nichtinvasiven Komponente (DCIS) |
| [SLN #1 Größe](Observation-LymphNodeMacroSLN1Size.md) | Makroskopische Größe des Sentinel-Lymphknotens #1: 12 x 8 x 6 mm |
| [SLN #2 Größe](Observation-LymphNodeMacroSLN2Size.md) | Makroskopische Größe des Sentinel-Lymphknotens #2: 10 x 7 x 5 mm |
| [SLN Axilla Pathology Report Composition](Composition-LymphNodeComposition.md) | FHIR Composition for structured sentinel lymph node biopsy pathology report |
| [SLN-Biopsie Anforderung](ServiceRequest-LymphNodeReportRequest.md) | Anforderung für pathologische Aufarbeitung des Sentinel-Lymphknoten-Exzisats der linken Axilla |
| [SLN-Exzisat (Einsendespecimen)](Specimen-LymphNodeSpecimenPart.md) | Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert, Patentblau-markiert |
| [Seitenangabe - SLN](Observation-LymphNodeLaterality.md) | Seitenlokalisation: Links |
| [Seitenlokalisation - BET](Observation-BreastResectionLaterality.md) | Seitenlokalisation des Präparats |
| [Senologe](Practitioner-BreastSurgeonPractitioner.md) | Durchführender Gynäkologe/Senologe für alle operativen Eingriffe |
| [Stanzbiopsie Mamma Anforderung](ServiceRequest-CoreNeedleBiopsyReportRequest.md) | Anforderung für pathologische Aufarbeitung einer US-gestützten Stanzbiopsie der linken Mamma |
| [Stanzbiopsie Mamma Pathology Report Composition](Composition-CoreNeedleBiopsyComposition.md) | FHIR Composition for structured core needle biopsy pathology report |
| [Stanzzylinder-Präparat (Einsendespecimen)](Specimen-CoreNeedleBiopsySpecimenPart.md) | 2 HG-Stanzzylinder Mamma links, 5 Uhr, 5 cm von Mamille |
| [Tubule Formation Score - Stanzbiopsie](Observation-CoreNeedleBiopsyTubuleFormation.md) | Glandular differentiation score by Nottingham |
| [Tubulus-Score - BET](Observation-BreastResectionTubuleScore.md) | Glandular differentiation score by Nottingham |
| [Tumorausdehnung - BET](Observation-BreastResectionTumorExtent.md) | Ausdehnung des Tumors in Bezug auf die Brustdrüse |
| [Vorchirurgische Therapie](Observation-BreastResectionPriorTherapy.md) | Angabe zur neoadjuvanten/vorchirurgischen Therapie |
| [Zifferblattlokalisation BET](Observation-BreastResectionMacroClock.md) | Uhrzeigerlokalisation des Tumors |
| [p40-IHC Reagenz BET](Substance-BreastResectionSubstancep40.md) | p40-Antikörper für Immunhistochemie |
| [p40-IHC Schnitt BET (Block01)](Specimen-BreastResectionSpecimenSlidep40-01.md) | Schnitt für p40 Immunhistochemie |
| [pN-Kategorie - SLN](Observation-LymphNodePN.md) | Pathologische N-Kategorie: pN1mi(sn) |
| [pT-Kategorie - BET](Observation-BreastResectionPT.md) | Pathologische T-Kategorie nach TNM |
| [Östrogenrezeptor Prozent - BET](Observation-BreastResectionERPercentage.md) | Prozentsatz ER-positiver Tumorzellkerne |
| [Östrogenrezeptor-Status - BET](Observation-BreastResectionERStatus.md) | Östrogenrezeptor-Status per Immunhistochemie |

