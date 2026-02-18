// ============================================================================
// DIAGNOSTIC CONCLUSION - LYMPHKNOTEN SPECIMENS
// ============================================================================

Instance: LymphNodeSpecimensDiagnosticConclusionGrouper
InstanceOf: MII_PR_Patho_Diagnostic_Conclusion_Grouper
Usage: #example
Title: "Diagnostic Conclusion Grouper - Lymphknoten"
Description: "Grouper for all diagnostic conclusion findings in lymph node specimens"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22637-3
* subject = Reference(Patient1)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeSpecimensReportRequest)
* derivedFrom = Reference(QuestionnaireResponseLymphNodeSpecimens)

* hasMember[+] = Reference(LymphNodeSpecimensLNExamined)
* hasMember[+] = Reference(LymphNodeSpecimensLNPositive)
* hasMember[+] = Reference(LymphNodeSpecimensSLNStatus)
* hasMember[+] = Reference(LymphNodeSpecimensITC)
* hasMember[+] = Reference(LymphNodeSpecimensMicrometastases)
* hasMember[+] = Reference(LymphNodeSpecimensMacrometastases)
* hasMember[+] = Reference(LymphNodeSpecimensExtranodalExtension)

* note.authorReference = Reference(PathologistPractitioner)
* note.time = "2024-07-19"
* note.text = "Zusammenfassung: 2 Sentinel-Lymphknoten untersucht, beide tumorfrei. Keine isolierten Tumorzellen (ITC), keine Mikrometastasen, keine Makrometastasen. Immunhistochemie (Panzytokeratin AE1/AE3) negativ. pN0(sn)."

// Anzahl untersuchter Lymphknoten
Instance: LymphNodeSpecimensLNExamined
InstanceOf: $mii-patho-finding
Usage: #example
Title: "LN Examined - Lymphknoten"
Description: "Number of regional lymph nodes examined"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21894-1 "Regional lymph nodes examined [#] Specimen"
* subject = Reference(Patient1)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeSpecimensReportRequest)
* valueQuantity = 2 '{count}' "count"
* derivedFrom = Reference(QuestionnaireResponseLymphNodeSpecimens)

// Anzahl befallener Lymphknoten
Instance: LymphNodeSpecimensLNPositive
InstanceOf: $mii-patho-finding
Usage: #example
Title: "LN Positive - Lymphknoten"
Description: "Number of positive regional lymph nodes"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21893-3 "Regional lymph nodes positive [#] Specimen"
* subject = Reference(Patient1)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeSpecimensReportRequest)
* valueQuantity = 0 '{count}' "count"
* derivedFrom = Reference(QuestionnaireResponseLymphNodeSpecimens)

// Sentinel-LK-Status
Instance: LymphNodeSpecimensSLNStatus
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Sentinel LN Status - Lymphknoten"
Description: "Sentinel lymph node status"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* code.text = "Sentinel-Lymphknoten-Status"
* subject = Reference(Patient1)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeSpecimensReportRequest)
* valueCodeableConcept = $sct#1229951005 "American Joint Committee on Cancer pN0 (qualifier value)"
* valueCodeableConcept.text = "pN0(sn) - Sentinel-Lymphknoten tumorfrei"
* derivedFrom = Reference(QuestionnaireResponseLymphNodeSpecimens)

// Isolierte Tumorzellen (ITC)
Instance: LymphNodeSpecimensITC
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Isolated Tumor Cells - Lymphknoten"
Description: "Presence of isolated tumor cells"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* code.text = "Isolierte Tumorzellen (ITC)"
* subject = Reference(Patient1)
* specimen = Reference(LymphNodeSpecimensSpecimenSlide01IHC)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeSpecimensReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Keine isolierten Tumorzellen nachgewiesen (IHC Panzytokeratin negativ)"
* derivedFrom = Reference(QuestionnaireResponseLymphNodeSpecimens)

// Mikrometastasen
Instance: LymphNodeSpecimensMicrometastases
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Micrometastases - Lymphknoten"
Description: "Presence of micrometastases in lymph nodes"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* code.text = "Mikrometastasen"
* subject = Reference(Patient1)
* specimen = Reference(LymphNodeSpecimensSpecimenSlide01HE)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeSpecimensReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Keine Mikrometastasen nachgewiesen"
* derivedFrom = Reference(QuestionnaireResponseLymphNodeSpecimens)

// Makrometastasen
Instance: LymphNodeSpecimensMacrometastases
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Macrometastases - Lymphknoten"
Description: "Presence of macrometastases in lymph nodes"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* code.text = "Makrometastasen"
* subject = Reference(Patient1)
* specimen = Reference(LymphNodeSpecimensSpecimenSlide01HE)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeSpecimensReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Keine Makrometastasen nachgewiesen"
* derivedFrom = Reference(QuestionnaireResponseLymphNodeSpecimens)

// Extranoduläre Extension
Instance: LymphNodeSpecimensExtranodalExtension
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Extranodal Extension - Lymphknoten"
Description: "Extranodal extension status"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85322-6 "Adjacent structure invaded by tumor [Anatomy] in Cancer specimen"
* code.text = "Extranoduläre Extension"
* subject = Reference(Patient1)
* effectiveDateTime = "2024-07-19"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeSpecimensReportRequest)
* valueCodeableConcept.text = "Nicht anwendbar (tumorfreie Lymphknoten)"
* derivedFrom = Reference(QuestionnaireResponseLymphNodeSpecimens)
