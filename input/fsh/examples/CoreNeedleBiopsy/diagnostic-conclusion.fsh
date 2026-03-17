// ============================================================================
// DIAGNOSTIC CONCLUSION - STANZBIOPSIE
// ============================================================================

Instance: CoreNeedleBiopsyDiagnosticConclusionGrouper
InstanceOf: MII_PR_Patho_Diagnostic_Conclusion_Grouper
Usage: #example
Title: "Diagnostic Conclusion Grouper - Stanzbiopsie"
Description: "Grouper for all diagnostic conclusion findings in core needle biopsy"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22637-3
* subject = Reference(Patient4)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

* hasMember[+] = Reference(CoreNeedleBiopsyHistologicalTypeICDO3)
* hasMember[+] = Reference(CoreNeedleBiopsyMorphologyFreeText)
* hasMember[+] = Reference(CoreNeedleBiopsyNottinghamGrade)
* hasMember[+] = Reference(CoreNeedleBiopsyNottinghamSummaryScore)
* hasMember[+] = Reference(CoreNeedleBiopsyTubuleFormation)
* hasMember[+] = Reference(CoreNeedleBiopsyNuclearPleomorphism)
* hasMember[+] = Reference(CoreNeedleBiopsyMitoticRate)
* hasMember[+] = Reference(CoreNeedleBiopsyERStatus)
* hasMember[+] = Reference(CoreNeedleBiopsyERPercentage)
* hasMember[+] = Reference(CoreNeedleBiopsyPRStatus)
* hasMember[+] = Reference(CoreNeedleBiopsyPRPercentage)
* hasMember[+] = Reference(CoreNeedleBiopsyHER2ISH)
* hasMember[+] = Reference(CoreNeedleBiopsyKi67)
* hasMember[+] = Reference(CoreNeedleBiopsyBClassification)
* hasMember[+] = Reference(CoreNeedleBiopsyMicrocalcification)
* hasMember[+] = Reference(CoreNeedleBiopsySpecimenRadiography)
* hasMember[+] = Reference(CoreNeedleBiopsyMicrocalcificationCorrelation)


// Histological Type (ICD-O-3)
Instance: CoreNeedleBiopsyHistologicalTypeICDO3
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histological Type ICD-O-3 - Stanzbiopsie"
Description: "Histological type according to ICD-O-3 classification"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlideHE01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueCodeableConcept = $ICDO-3#8500/3 "Invasives duktales Karzinom (NST)"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// Morphology Free Text
Instance: CoreNeedleBiopsyMorphologyFreeText
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Morphology Free Text - Stanzbiopsie"
Description: "Free text description of tumor morphology"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlideHE01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueString = "Invasives Karzinom, NST"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// Nottingham Grade
Instance: CoreNeedleBiopsyNottinghamGrade
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Nottingham Grade - Stanzbiopsie"
Description: "Nottingham histologic grade"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44648-4 "Histologic grade [Score] in Breast cancer specimen by Nottingham"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlideHE01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueCodeableConcept = $sct#1155703007 "G2: Moderately differentiated histologic grade (qualifier value)"
* valueCodeableConcept.text = "Nottingham Grad 2"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// Nottingham Summary Score
Instance: CoreNeedleBiopsyNottinghamSummaryScore
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Nottingham Summary Score - Stanzbiopsie"
Description: "Elston-Ellis summary score (3+2+1=6)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44648-4 "Histologic grade [Score] in Breast cancer specimen by Nottingham"
* code.text = "Elston-Ellis Summenscore"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlideHE01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueQuantity = 6 '{score}' "score"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// Tubule Formation Score
Instance: CoreNeedleBiopsyTubuleFormation
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tubule Formation Score - Stanzbiopsie"
Description: "Glandular differentiation score by Nottingham"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85321-8 "Glandular differentiation [Score] in Breast cancer specimen by Nottingham"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlideHE01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueQuantity = 3 '{score}' "score"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// Nuclear Pleomorphism Score
Instance: CoreNeedleBiopsyNuclearPleomorphism
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Nuclear Pleomorphism Score - Stanzbiopsie"
Description: "Nuclear pleomorphism score by Nottingham"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44645-0 "Nuclear pleomorphism in Breast tumor by Nottingham"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlideHE01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueQuantity = 2 '{score}' "score"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// Mitotic Rate Score
Instance: CoreNeedleBiopsyMitoticRate
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Mitotic Rate Score - Stanzbiopsie"
Description: "Mitotic rate score by Nottingham"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85300-2 "Mitotic rate [Score] in Breast cancer specimen by Nottingham"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlideHE01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueQuantity = 1 '{score}' "score"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// ER Status
Instance: CoreNeedleBiopsyERStatus
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Estrogen Receptor Status - Stanzbiopsie"
Description: "Estrogen receptor status by immunohistochemistry"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#85337-4 "Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* code.coding[+] = $sct#1234806008 "Observation using immunohistochemistry (observable entity)"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlideER01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "ER positiv"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3467 "ESR1"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// ER Percentage
Instance: CoreNeedleBiopsyERPercentage
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Estrogen Receptor Percentage - Stanzbiopsie"
Description: "Percentage of ER positive tumor cell nuclei"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#85329-1 "Cells.estrogen receptor/cells in Breast cancer specimen by Immune stain"
* code.coding[+] = $sct#1234806008 "Observation using immunohistochemistry (observable entity)"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlideER01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueQuantity.value = 85
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3467 "ESR1"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// PR Status
Instance: CoreNeedleBiopsyPRStatus
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Progesterone Receptor Status - Stanzbiopsie"
Description: "Progesterone receptor status by immunohistochemistry"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#85339-0 "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* code.coding[+] = $sct#1234806008 "Observation using immunohistochemistry (observable entity)"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlidePR01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "PR positiv"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:8910 "PGR"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// PR Percentage
Instance: CoreNeedleBiopsyPRPercentage
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Progesterone Receptor Percentage - Stanzbiopsie"
Description: "Percentage of PR positive tumor cell nuclei"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#85325-9 "Cells.progesterone receptor/cells in Breast cancer specimen by Immune stain"
* code.coding[+] = $sct#1234806008 "Observation using immunohistochemistry (observable entity)"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlidePR01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueQuantity.value = 50
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:8910 "PGR"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// HER2 ISH (B-DISH)
Instance: CoreNeedleBiopsyHER2ISH
InstanceOf: $mii-patho-finding
Usage: #example
Title: "HER2 ISH - Stanzbiopsie"
Description: "HER2 status by in-situ hybridization (B-DISH)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#1363314005 "Presence of receptor tyrosine-protein kinase erbB-2 in primary malignant neoplasm of breast by in situ hybridization (observable entity)"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlideHER2-01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "HER2 negativ (nicht amplifiziert)"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3430 "ERBB2"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// Ki-67
Instance: CoreNeedleBiopsyKi67
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Ki-67 Index - Stanzbiopsie"
Description: "Ki-67 proliferation index"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#85330-9 "Cells.Ki-67 nuclear Ag/cells in Breast cancer specimen by Immune stain"
* code.coding[+] = $sct#1234806008 "Observation using immunohistochemistry (observable entity)"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlideKi67-01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueQuantity.value = 10
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:7107 "MKI67"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// B-Klassifikation (NHSBSP)
Instance: CoreNeedleBiopsyBClassification
InstanceOf: $mii-patho-finding
Usage: #example
Title: "B-Klassifikation - Stanzbiopsie"
Description: "B-Classification according to NHSBSP"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#271937008 "Screening interpretation (observable entity)"
* code.text = "B-Klassifikation"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlideHE01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueCodeableConcept.text = "B5b"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// Mikroverkalkungen
Instance: CoreNeedleBiopsyMicrocalcification
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Relevante Mikroverkalkungen - Stanzbiopsie"
Description: "Presence of relevant microcalcifications"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#1240404008 "Presence of microcalcification in excised breast specimen (observable entity)"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlideHE01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Keine relevanten Mikroverkalkungen"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// Präparateradiogramm gesehen
Instance: CoreNeedleBiopsySpecimenRadiography
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Präparateradiogramm - Stanzbiopsie"
Description: "Specimen radiography reviewed"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#80865008 "Specimen mammography (procedure)"
* code.text = "Präparateradiogramm"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenPart)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "Präparateradiogramm gesehen"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// Korrelation Mikroverkalkung
Instance: CoreNeedleBiopsyMicrocalcificationCorrelation
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Mikroverkalkung-Korrelation - Stanzbiopsie"
Description: "Correlation of microcalcifications with radiological findings"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#12747003 "Microcalcification, calcified structure (morphologic abnormality)"
* code.text = "Korrelation Mikroverkalkung"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenSlideHE01)
* effectiveDateTime = "2025-01-17"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* valueString = "Vorliegende Verkalkung radiologisch nicht relevant (kleiner als 100 Mikrometer)"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)
