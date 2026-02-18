// ============================================================================
// DIAGNOSTIC CONCLUSION - NEOADJUVANTE THERAPIE RESEKTION
// ============================================================================

Instance: NeoadjuvantTherapyResectionDiagnosticConclusionGrouper
InstanceOf: MII_PR_Patho_Diagnostic_Conclusion_Grouper
Usage: #example
Title: "Diagnostic Conclusion Grouper - NAT Resektion"
Description: "Grouper for all diagnostic conclusion findings in neoadjuvant therapy resection"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22637-3
* subject = Reference(Patient2)
* effectiveDateTime = "2024-09-25"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(NeoadjuvantTherapyResectionReportRequest)
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

* hasMember[+] = Reference(NeoadjuvantTherapyResectionPreNATHistologicalType)
* hasMember[+] = Reference(NeoadjuvantTherapyResectionTherapyResponse)
* hasMember[+] = Reference(NeoadjuvantTherapyResectionRCBClass)
* hasMember[+] = Reference(NeoadjuvantTherapyResectionViableTumor)
* hasMember[+] = Reference(NeoadjuvantTherapyResectionResidualDCIS)
* hasMember[+] = Reference(NeoadjuvantTherapyResectionTumorBedChanges)
* hasMember[+] = Reference(NeoadjuvantTherapyResectionMarginStatus)
* hasMember[+] = Reference(NeoadjuvantTherapyResectionTNMypT)
* hasMember[+] = Reference(NeoadjuvantTherapyResectionTNMypN)
* hasMember[+] = Reference(NeoadjuvantTherapyResectionRClassification)

* note.authorReference = Reference(PathologistPractitioner)
* note.time = "2024-09-25"
* note.text = "Zusammenfassung: Mastektomie-Präparat nach neoadjuvanter Chemotherapie (dose-dense EC + Paclitaxel) bei triple-negativem Mammakarzinom. Pathologische Komplettremission (pCR). Kein vitales invasives Karzinom und kein residuales DCIS nachweisbar. Tumorbett mit Fibrose, chronischer Entzündung und Schaumzellen. Residual Cancer Burden (RCB) Klasse 0. Resektionsränder frei. ypT0 ypN0."

// Pre-NAT Histologischer Typ
Instance: NeoadjuvantTherapyResectionPreNATHistologicalType
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Pre-NAT Histological Type - NAT Resektion"
Description: "Pre-treatment histological type according to ICD-O-3"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* code.text = "Prä-NAT Histologischer Typ"
* subject = Reference(Patient2)
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenSlide01A)
* effectiveDateTime = "2024-09-25"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(NeoadjuvantTherapyResectionReportRequest)
* valueCodeableConcept = $ICDO-3#8500/3 "Invasives duktales Karzinom (NST)"
* valueCodeableConcept.text = "Prä-NAT: Invasives Karzinom NST (Stanzbiopsie)"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

// Therapieansprechen
Instance: NeoadjuvantTherapyResectionTherapyResponse
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Therapy Response - NAT Resektion"
Description: "Response to neoadjuvant therapy"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85323-4 "Response to neoadjuvant therapy in Breast cancer specimen"
* subject = Reference(Patient2)
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenSlide01A)
* effectiveDateTime = "2024-09-25"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(NeoadjuvantTherapyResectionReportRequest)
* valueCodeableConcept = $sct#110396000 "No evidence of malignant neoplasm (finding)"
* valueCodeableConcept.text = "Pathologische Komplettremission (pCR)"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

// RCB Class
Instance: NeoadjuvantTherapyResectionRCBClass
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Residual Cancer Burden Class - NAT Resektion"
Description: "Residual Cancer Burden classification"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85323-4 "Response to neoadjuvant therapy in Breast cancer specimen"
* code.text = "Residual Cancer Burden (RCB)"
* subject = Reference(Patient2)
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenSlide01A)
* effectiveDateTime = "2024-09-25"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(NeoadjuvantTherapyResectionReportRequest)
* valueString = "RCB Klasse 0 (pCR)"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

// Vitales Tumorgewebe
Instance: NeoadjuvantTherapyResectionViableTumor
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Viable Tumor - NAT Resektion"
Description: "Presence of viable invasive tumor after neoadjuvant therapy"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* code.text = "Vitales invasives Tumorgewebe"
* subject = Reference(Patient2)
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenSlide01A)
* effectiveDateTime = "2024-09-25"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(NeoadjuvantTherapyResectionReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Kein vitales invasives Tumorgewebe nachweisbar"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

// Residuales DCIS
Instance: NeoadjuvantTherapyResectionResidualDCIS
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Residual DCIS - NAT Resektion"
Description: "Presence of residual DCIS after neoadjuvant therapy"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85317-6 "DCIS.max dimension in Breast cancer specimen"
* code.text = "Residuales DCIS"
* subject = Reference(Patient2)
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenSlide01A)
* effectiveDateTime = "2024-09-25"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(NeoadjuvantTherapyResectionReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Kein residuales DCIS nachweisbar"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

// Tumorbett-Veränderungen
Instance: NeoadjuvantTherapyResectionTumorBedChanges
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumor Bed Changes - NAT Resektion"
Description: "Histological changes in the tumor bed after neoadjuvant therapy"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* code.text = "Tumorbett-Veränderungen"
* subject = Reference(Patient2)
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenSlide01A)
* effectiveDateTime = "2024-09-25"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(NeoadjuvantTherapyResectionReportRequest)
* valueString = "Tumorbett mit Fibrose, chronischer Entzündung, Schaumzellen (Histiozyten) und Hämosiderin-Ablagerungen. Clip-Marker in situ. Kein vitales Tumorgewebe."
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

// Margin Status
Instance: NeoadjuvantTherapyResectionMarginStatus
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Margin Status - NAT Resektion"
Description: "Surgical margin involvement status"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85334-1 "Surgical margin DCIS involvement in Breast cancer specimen"
* code.text = "Resektionsränder"
* subject = Reference(Patient2)
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* effectiveDateTime = "2024-09-25"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(NeoadjuvantTherapyResectionReportRequest)
* valueCodeableConcept = $sct#1228937002 "Surgical margins uninvolved by tumor (finding)"
* valueCodeableConcept.text = "Resektionsränder tumorfrei (Mastektomie)"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

// TNM ypT
Instance: NeoadjuvantTherapyResectionTNMypT
InstanceOf: $mii-patho-finding
Usage: #example
Title: "TNM Primary Tumor (ypT) - NAT Resektion"
Description: "Pathological primary tumor stage after neoadjuvant therapy"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21899-0 "Primary tumor.pathology Cancer"
* subject = Reference(Patient2)
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* effectiveDateTime = "2024-09-25"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(NeoadjuvantTherapyResectionReportRequest)
* valueCodeableConcept.text = "ypT0"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

// TNM ypN
Instance: NeoadjuvantTherapyResectionTNMypN
InstanceOf: $mii-patho-finding
Usage: #example
Title: "TNM Regional Lymph Nodes (ypN) - NAT Resektion"
Description: "Pathological regional lymph node stage after neoadjuvant therapy"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* subject = Reference(Patient2)
* effectiveDateTime = "2024-09-25"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(NeoadjuvantTherapyResectionReportRequest)
* valueCodeableConcept = $sct#1229951005 "American Joint Committee on Cancer pN0 (qualifier value)"
* valueCodeableConcept.text = "ypN0"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

// R Classification
Instance: NeoadjuvantTherapyResectionRClassification
InstanceOf: $mii-patho-finding
Usage: #example
Title: "R Classification - NAT Resektion"
Description: "Residual tumor classification"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#395536008 "Tumor stage finding (finding)"
* code.text = "R-Klassifikation"
* subject = Reference(Patient2)
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* effectiveDateTime = "2024-09-25"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(NeoadjuvantTherapyResectionReportRequest)
* valueCodeableConcept.text = "R0"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)
