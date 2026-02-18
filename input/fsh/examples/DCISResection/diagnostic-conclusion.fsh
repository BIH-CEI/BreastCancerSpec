// ============================================================================
// DIAGNOSTIC CONCLUSION - DCIS RESEKTION
// ============================================================================

Instance: DCISResectionDiagnosticConclusionGrouper
InstanceOf: MII_PR_Patho_Diagnostic_Conclusion_Grouper
Usage: #example
Title: "Diagnostic Conclusion Grouper - DCIS Resektion"
Description: "Grouper for all diagnostic conclusion findings in DCIS resection specimen"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22637-3
* subject = Reference(Patient3)
* effectiveDateTime = "2024-06-14"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(DCISResectionReportRequest)
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

* hasMember[+] = Reference(DCISResectionHistologicalTypeICDO3)
* hasMember[+] = Reference(DCISResectionMorphologyFreeText)
* hasMember[+] = Reference(DCISResectionNuclearGrade)
* hasMember[+] = Reference(DCISResectionArchitecturalPattern)
* hasMember[+] = Reference(DCISResectionNecrosis)
* hasMember[+] = Reference(DCISResectionSize)
* hasMember[+] = Reference(DCISResectionMarginStatus)
* hasMember[+] = Reference(DCISResectionClosestMarginDistance)
* hasMember[+] = Reference(DCISResectionCalcifications)
* hasMember[+] = Reference(DCISResectionMicroinvasion)
* hasMember[+] = Reference(DCISResectionLobularNeoplasia)

* note.authorReference = Reference(PathologistPractitioner)
* note.time = "2024-06-14"
* note.text = "Zusammenfassung: Duktales Carcinoma in situ (DCIS), high-grade, Comedo-Typ (ICD-O 8500/2). Nukleärer Grad 3, Comedo-Nekrose vorhanden. DCIS-Ausdehnung 25 mm. Resektionsränder frei, nächster Rand 3 mm. Kalzifikationen vorhanden. Keine Mikroinvasion. Keine begleitende lobuläre Neoplasie."

// Histological Type (ICD-O-3)
Instance: DCISResectionHistologicalTypeICDO3
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histological Type ICD-O-3 - DCIS Resektion"
Description: "Histological type according to ICD-O-3 classification"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenSlide01)
* effectiveDateTime = "2024-06-14"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(DCISResectionReportRequest)
* valueCodeableConcept = $ICDO-3#8500/2 "Duktales Carcinoma in situ"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

// Morphology Free Text
Instance: DCISResectionMorphologyFreeText
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Morphology Free Text - DCIS Resektion"
Description: "Free text description of DCIS morphology"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenSlide01)
* effectiveDateTime = "2024-06-14"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(DCISResectionReportRequest)
* valueString = "Duktales Carcinoma in situ, high-grade, Comedo-Typ mit Nekrose"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

// Nuclear Grade
Instance: DCISResectionNuclearGrade
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Nuclear Grade - DCIS Resektion"
Description: "Nuclear grade of DCIS"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44648-4 "Histologic grade [Score] in Breast cancer specimen Qualitative by Nottingham"
* code.text = "Nukleärer Grad DCIS"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenSlide01)
* effectiveDateTime = "2024-06-14"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(DCISResectionReportRequest)
* valueCodeableConcept = $sct#54102005 "G3 grade (finding)"
* valueCodeableConcept.text = "Nukleärer Grad 3 (high-grade)"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

// Architectural Pattern
Instance: DCISResectionArchitecturalPattern
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Architectural Pattern - DCIS Resektion"
Description: "Growth pattern of DCIS"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85302-8 "Growth pattern of DCIS [Type] in Breast cancer specimen"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenSlide01)
* effectiveDateTime = "2024-06-14"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(DCISResectionReportRequest)
* valueString = "Comedo-Typ"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

// Necrosis
Instance: DCISResectionNecrosis
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Necrosis - DCIS Resektion"
Description: "Necrosis type in DCIS"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85340-8 "DCIS necrosis [Type] in Breast cancer specimen"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenSlide01)
* effectiveDateTime = "2024-06-14"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(DCISResectionReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "Comedo-Nekrose vorhanden"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

// DCIS Size
Instance: DCISResectionSize
InstanceOf: $mii-patho-finding
Usage: #example
Title: "DCIS Size - DCIS Resektion"
Description: "Maximum dimension of DCIS"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85317-6 "DCIS.max dimension in Breast cancer specimen"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenSlide01)
* effectiveDateTime = "2024-06-14"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(DCISResectionReportRequest)
* valueQuantity = 25 'mm' "mm"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

// Margin Status
Instance: DCISResectionMarginStatus
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Margin Status - DCIS Resektion"
Description: "Surgical margin DCIS involvement"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85334-1 "Surgical margin DCIS involvement in Breast cancer specimen"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenPart)
* effectiveDateTime = "2024-06-14"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(DCISResectionReportRequest)
* valueCodeableConcept = $sct#1228937002 "Surgical margins uninvolved by tumor (finding)"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

// Closest Margin Distance
Instance: DCISResectionClosestMarginDistance
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Closest Margin Distance - DCIS Resektion"
Description: "Distance from DCIS to closest margin"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85304-4 "Distance of carcinoma from closest margin in Breast cancer specimen"
* code.text = "Nächster Resektionsrand"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenPart)
* effectiveDateTime = "2024-06-14"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(DCISResectionReportRequest)
* valueQuantity = 3 'mm' "mm"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

// Calcifications
Instance: DCISResectionCalcifications
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Calcifications - DCIS Resektion"
Description: "Presence of calcifications in DCIS"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#129748009 "Calcification of breast (finding)"
* code.text = "Kalzifikationen"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenSlide01)
* effectiveDateTime = "2024-06-14"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(DCISResectionReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

// Microinvasion
Instance: DCISResectionMicroinvasion
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Microinvasion - DCIS Resektion"
Description: "Presence of microinvasion in DCIS specimen"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#15867007 "Microinvasion (morphologic abnormality)"
* code.text = "Mikroinvasion"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenSlide01)
* effectiveDateTime = "2024-06-14"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(DCISResectionReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

// Lobular Neoplasia
Instance: DCISResectionLobularNeoplasia
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Lobular Neoplasia - DCIS Resektion"
Description: "Presence of lobular neoplasia"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85338-2 "LCIS [Presence] in Breast cancer specimen by Light microscopy"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenSlide01)
* effectiveDateTime = "2024-06-14"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(DCISResectionReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)
