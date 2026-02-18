// ============================================================================
// DIAGNOSTIC CONCLUSION - INVASIVES KARZINOM RESEKTION
// ============================================================================

Instance: InvasiveCarcinomaResectionDiagnosticConclusionGrouper
InstanceOf: MII_PR_Patho_Diagnostic_Conclusion_Grouper
Usage: #example
Title: "Diagnostic Conclusion Grouper - Invasives Karzinom"
Description: "Grouper for all diagnostic conclusion findings in invasive carcinoma resection"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22637-3
* subject = Reference(Patient1)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

* hasMember[+] = Reference(InvasiveCarcinomaResectionHistologicalTypeICDO3)
* hasMember[+] = Reference(InvasiveCarcinomaResectionMorphologyFreeText)
* hasMember[+] = Reference(InvasiveCarcinomaResectionNottinghamGrade)
* hasMember[+] = Reference(InvasiveCarcinomaResectionTubuleFormation)
* hasMember[+] = Reference(InvasiveCarcinomaResectionNuclearPleomorphism)
* hasMember[+] = Reference(InvasiveCarcinomaResectionMitoticRate)
* hasMember[+] = Reference(InvasiveCarcinomaResectionERStatus)
* hasMember[+] = Reference(InvasiveCarcinomaResectionERPercentage)
* hasMember[+] = Reference(InvasiveCarcinomaResectionPRStatus)
* hasMember[+] = Reference(InvasiveCarcinomaResectionPRPercentage)
* hasMember[+] = Reference(InvasiveCarcinomaResectionHER2IHC)
* hasMember[+] = Reference(InvasiveCarcinomaResectionKi67)
* hasMember[+] = Reference(InvasiveCarcinomaResectionTumorSize)
* hasMember[+] = Reference(InvasiveCarcinomaResectionAccompanyingDCIS)
* hasMember[+] = Reference(InvasiveCarcinomaResectionLVSI)
* hasMember[+] = Reference(InvasiveCarcinomaResectionPerineuralInvasion)
* hasMember[+] = Reference(InvasiveCarcinomaResectionMarginStatus)
* hasMember[+] = Reference(InvasiveCarcinomaResectionClosestMarginDistance)
* hasMember[+] = Reference(InvasiveCarcinomaResectionTNMpT)
* hasMember[+] = Reference(InvasiveCarcinomaResectionTNMpN)
* hasMember[+] = Reference(InvasiveCarcinomaResectionRClassification)

* note.authorReference = Reference(PathologistPractitioner)
* note.time = "2024-07-19"
* note.text = "Zusammenfassung: Invasives Karzinom NST (ICD-O 8500/3), Nottingham Grad 2 (Score 6: Tubuli 2, Pleomorphie 2, Mitosen 2). ER positiv (90%), PR positiv (60%), HER2 negativ (IHC 1+), Ki-67 15%. Tumorgröße 18 mm invasiv, begleitendes DCIS 5 mm. Keine lymphovaskuläre Invasion, keine perineurale Invasion. Resektionsränder frei (R0), nächster Rand 5 mm. pT1c pN0(sn) M0."

// Histological Type (ICD-O-3)
Instance: InvasiveCarcinomaResectionHistologicalTypeICDO3
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histological Type ICD-O-3 - Invasives Karzinom"
Description: "Histological type according to ICD-O-3 classification"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueCodeableConcept = $ICDO-3#8500/3 "Invasives duktales Karzinom (NST)"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Morphology Free Text
Instance: InvasiveCarcinomaResectionMorphologyFreeText
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Morphology Free Text - Invasives Karzinom"
Description: "Free text description of tumor morphology"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueString = "Invasives Karzinom NST (no special type) mit begleitendem DCIS"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Nottingham Grade
Instance: InvasiveCarcinomaResectionNottinghamGrade
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Nottingham Grade - Invasives Karzinom"
Description: "Nottingham histologic grade"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44648-4 "Histologic grade [Score] in Breast cancer specimen Qualitative by Nottingham"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueCodeableConcept = $sct#12370007 "G2 grade (finding)"
* valueCodeableConcept.text = "Nottingham Grad 2 (Score 6)"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Tubule Formation Score
Instance: InvasiveCarcinomaResectionTubuleFormation
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tubule Formation Score - Invasives Karzinom"
Description: "Glandular differentiation score by Nottingham"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85321-8 "Glandular differentiation [Score] in Breast cancer specimen Qualitative by Nottingham"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueQuantity = 2 '{score}' "score"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Nuclear Pleomorphism Score
Instance: InvasiveCarcinomaResectionNuclearPleomorphism
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Nuclear Pleomorphism Score - Invasives Karzinom"
Description: "Nuclear pleomorphism score by Nottingham"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44645-0 "Nuclear pleomorphism in Breast cancer specimen Qualitative by Nottingham"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueQuantity = 2 '{score}' "score"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Mitotic Rate Score
Instance: InvasiveCarcinomaResectionMitoticRate
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Mitotic Rate Score - Invasives Karzinom"
Description: "Mitotic rate score by Nottingham"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85300-2 "Mitotic rate [Score] in Breast cancer specimen Qualitative by Nottingham"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueQuantity = 2 '{score}' "score"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// ER Status
Instance: InvasiveCarcinomaResectionERStatus
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Estrogen Receptor Status - Invasives Karzinom"
Description: "Estrogen receptor status by immunohistochemistry"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85337-4 "Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "ER positiv"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// ER Percentage
Instance: InvasiveCarcinomaResectionERPercentage
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Estrogen Receptor Percentage - Invasives Karzinom"
Description: "Percentage of ER positive cells"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85329-1 "Cells.estrogen receptor/100 cells in Breast cancer specimen by Immune stain"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueQuantity.value = 90
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// PR Status
Instance: InvasiveCarcinomaResectionPRStatus
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Progesterone Receptor Status - Invasives Karzinom"
Description: "Progesterone receptor status by immunohistochemistry"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85339-0 "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "PR positiv"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// PR Percentage
Instance: InvasiveCarcinomaResectionPRPercentage
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Progesterone Receptor Percentage - Invasives Karzinom"
Description: "Percentage of PR positive cells"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85325-9 "Cells.progesterone receptor/100 cells in Breast cancer specimen by Immune stain"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueQuantity.value = 60
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// HER2 IHC
Instance: InvasiveCarcinomaResectionHER2IHC
InstanceOf: $mii-patho-finding
Usage: #example
Title: "HER2 IHC - Invasives Karzinom"
Description: "HER2 status by immunohistochemistry"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85319-2 "HER2 [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "HER2 negativ (IHC Score 1+)"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Ki-67
Instance: InvasiveCarcinomaResectionKi67
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Ki-67 Index - Invasives Karzinom"
Description: "Ki-67 proliferation index"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85330-9 "Cells.Ki-67 nuclear Ag/100 cells in Breast cancer specimen by Immune stain"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueQuantity.value = 15
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Tumor Size (invasive component)
Instance: InvasiveCarcinomaResectionTumorSize
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumor Size - Invasives Karzinom"
Description: "Size of invasive tumor component"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21889-1 "Size Tumor"
* code.text = "Invasive Tumorgröße"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenPart)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueQuantity = 18 'mm' "mm"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Accompanying DCIS
Instance: InvasiveCarcinomaResectionAccompanyingDCIS
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Accompanying DCIS - Invasives Karzinom"
Description: "Size of accompanying DCIS component"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85317-6 "DCIS.max dimension in Breast cancer specimen"
* code.text = "Begleitendes DCIS"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueQuantity = 5 'mm' "mm"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// LVSI
Instance: InvasiveCarcinomaResectionLVSI
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Lymphovascular Invasion - Invasives Karzinom"
Description: "Lymphovascular space invasion"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#33739-4 "Lymphatic.small vessel.invasion [Identifier] in Specimen by CAP cancer protocols"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Perineural Invasion
Instance: InvasiveCarcinomaResectionPerineuralInvasion
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Perineural Invasion - Invasives Karzinom"
Description: "Perineural invasion status"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Margin Status
Instance: InvasiveCarcinomaResectionMarginStatus
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Margin Status - Invasives Karzinom"
Description: "Surgical margin involvement status"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85334-1 "Surgical margin DCIS involvement in Breast cancer specimen"
* code.text = "Resektionsränder"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenPart)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueCodeableConcept = $sct#1228937002 "Surgical margins uninvolved by tumor (finding)"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Closest Margin Distance
Instance: InvasiveCarcinomaResectionClosestMarginDistance
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Closest Margin Distance - Invasives Karzinom"
Description: "Distance to closest resection margin"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85304-4 "Distance of carcinoma from closest margin in Breast cancer specimen"
* code.text = "Nächster Resektionsrand"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenPart)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueQuantity = 5 'mm' "mm"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// TNM pT
Instance: InvasiveCarcinomaResectionTNMpT
InstanceOf: $mii-patho-finding
Usage: #example
Title: "TNM Primary Tumor (pT) - Invasives Karzinom"
Description: "Pathological primary tumor stage"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21899-0 "Primary tumor.pathology Cancer"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenPart)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueCodeableConcept = $sct#1228938007 "American Joint Committee on Cancer pT1c (qualifier value)"
* valueCodeableConcept.text = "pT1c"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// TNM pN
Instance: InvasiveCarcinomaResectionTNMpN
InstanceOf: $mii-patho-finding
Usage: #example
Title: "TNM Regional Lymph Nodes (pN) - Invasives Karzinom"
Description: "Pathological regional lymph node stage"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* subject = Reference(Patient1)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueCodeableConcept = $sct#1229951005 "American Joint Committee on Cancer pN0 (qualifier value)"
* valueCodeableConcept.text = "pN0(sn)"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// R Classification
Instance: InvasiveCarcinomaResectionRClassification
InstanceOf: $mii-patho-finding
Usage: #example
Title: "R Classification - Invasives Karzinom"
Description: "Residual tumor classification"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#395536008 "Tumor stage finding (finding)"
* code.text = "R-Klassifikation"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenPart)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* valueCodeableConcept.text = "R0"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)
