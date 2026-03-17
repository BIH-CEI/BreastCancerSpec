// ============================================================================
// DIAGNOSTIC CONCLUSION - SLN-BIOPSIE AXILLA
// ============================================================================

Instance: LymphNodeDiagnosticConclusionGrouper
InstanceOf: MII_PR_Patho_Diagnostic_Conclusion_Grouper
Usage: #example
Title: "Diagnostic Conclusion Grouper - SLN Axilla"
Description: "Grouper for all diagnostic conclusion findings in sentinel lymph node biopsy"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22637-3
* subject = Reference(Patient4)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// LK-Befunde (15)
* hasMember[+] = Reference(LymphNodeProcedure)
* hasMember[+] = Reference(LymphNodeLaterality)
* hasMember[+] = Reference(LymphNodeNonSLNExamined)
* hasMember[+] = Reference(LymphNodeNonSLNPositive)
* hasMember[+] = Reference(LymphNodeSLNExamined)
* hasMember[+] = Reference(LymphNodeSLNPositive)
* hasMember[+] = Reference(LymphNodeTotalExamined)
* hasMember[+] = Reference(LymphNodeTotalPositive)
* hasMember[+] = Reference(LymphNodeMacroMetCount)
* hasMember[+] = Reference(LymphNodeMicroMetCount)
* hasMember[+] = Reference(LymphNodeITCCount)
* hasMember[+] = Reference(LymphNodeLargestMetSize)
* hasMember[+] = Reference(LymphNodeExtranodalExtension)
* hasMember[+] = Reference(LymphNodePN)
* hasMember[+] = Reference(LymphNodeComment)


// ============================================================================
// 1. LK OP Prozedur (linkId 11540)
// ============================================================================

Instance: LymphNodeProcedure
InstanceOf: $mii-patho-finding
Usage: #example
Title: "LK OP Prozedur - SLN"
Description: "Art der Lymphknoten-Operation: Sentinel-Lymphknoten-Biopsie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21877-6 "Surgery procedure for regional nodes at facility.YYY Cancer"
* code.text = "LK OP Prozedur"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueCodeableConcept = $sct#396487001 "Sentinel lymph node biopsy (procedure)"
* valueCodeableConcept.text = "Sentinel-Lymphknoten-Biopsie"
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// ============================================================================
// 2. Seitenangabe (linkId 11620)
// ============================================================================

Instance: LymphNodeLaterality
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenangabe - SLN"
Description: "Seitenlokalisation: Links"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#20228-3 "Anatomic part Laterality"
* code.text = "Seitenangabe"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueCodeableConcept = $sct#7771000 "Left (qualifier value)"
* valueCodeableConcept.text = "Links"
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// ============================================================================
// 3. Anzahl untersuchter Non-SLN (linkId 11630)
// ============================================================================

Instance: LymphNodeNonSLNExamined
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl untersuchter Non-SLN"
Description: "Anzahl der untersuchten (nicht-Sentinel) axillären Lymphknoten: 0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21894-1 "Regional lymph nodes examined [#] Specimen"
* code.text = "Anzahl untersuchter Non-SLN-axillärer LK"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueQuantity.value = 0
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// ============================================================================
// 4. Anzahl befallener Non-SLN (linkId 11640)
// ============================================================================

Instance: LymphNodeNonSLNPositive
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl befallener Non-SLN"
Description: "Anzahl der befallenen (nicht-Sentinel) axillären Lymphknoten: 0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21893-3 "Regional lymph nodes positive [#] Specimen"
* code.text = "Anzahl befallener Non-SLN-axillärer LK"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueQuantity.value = 0
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// ============================================================================
// 5. Anzahl untersuchter SLN (linkId 11650)
// ============================================================================

Instance: LymphNodeSLNExamined
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl untersuchter SLN"
Description: "Anzahl der untersuchten Sentinel-Lymphknoten: 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85347-3 "Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy"
* code.text = "Anzahl untersuchter Sentinel-LK"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueQuantity.value = 2
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// ============================================================================
// 6. Anzahl befallener SLN (linkId 11660)
// ============================================================================

Instance: LymphNodeSLNPositive
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl befallener SLN"
Description: "Anzahl der befallenen Sentinel-Lymphknoten: 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#1264491009 "Number of sentinel lymph nodes containing metastatic neoplasm in excised specimen (observable entity)"
* code.text = "Anzahl befallener Sentinel-LK"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueQuantity.value = 1
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// ============================================================================
// 7. Gesamtzahl untersuchter LK (linkId 11944)
// ============================================================================

Instance: LymphNodeTotalExamined
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Gesamtzahl untersuchter LK"
Description: "Gesamtzahl untersuchter Lymphknoten: 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#92833-3 "Lymph nodes examined [#] in Cancer specimen by Light microscopy"
* code.text = "Gesamtzahl untersuchter Lymphknoten"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueQuantity.value = 2
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// ============================================================================
// 8. Gesamtzahl befallener LK (linkId 11945)
// ============================================================================

Instance: LymphNodeTotalPositive
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Gesamtzahl befallener LK"
Description: "Gesamtzahl befallener Lymphknoten: 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#92831-7 "Lymph nodes with metastasis [#] in Cancer specimen"
* code.text = "Gesamtzahl befallener Lymphknoten"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueQuantity.value = 1
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// ============================================================================
// 9. Makrometastatisch befallene LK (linkId 11947)
// ============================================================================

Instance: LymphNodeMacroMetCount
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Makrometastatisch befallene LK"
Description: "Gesamtzahl makrometastatisch befallener Lymphknoten: 0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85343-2 "Lymph nodes with macrometastases [#] in Cancer specimen by Light microscopy"
* code.text = "Gesamtzahl makrometastatisch befallener LK"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueQuantity.value = 0
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// ============================================================================
// 10. Mikrometastatisch befallene LK (linkId 11948)
// ============================================================================

Instance: LymphNodeMicroMetCount
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Mikrometastatisch befallene LK"
Description: "Gesamtzahl mikrometastatisch befallener Lymphknoten: 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85344-0 "Lymph nodes with micrometastases [#] in Cancer specimen by Light microscopy"
* code.text = "Gesamtzahl mikrometastatisch befallener LK"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueQuantity.value = 1
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// ============================================================================
// 11. ITC-befallene LK (linkId 11946)
// ============================================================================

Instance: LymphNodeITCCount
InstanceOf: $mii-patho-finding
Usage: #example
Title: "ITC-befallene LK"
Description: "Gesamtzahl ausschließlich ITC-befallener Lymphknoten: 0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85352-3 "Lymph nodes with isolated tumor cells [#] in Cancer specimen by Light microscopy"
* code.text = "Gesamtzahl ausschließlich ITC-befallener LK"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueQuantity.value = 0
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// ============================================================================
// 12. Größte Metastasenausdehnung (linkId 11690)
// ============================================================================

Instance: LymphNodeLargestMetSize
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Größte Metastasenausdehnung"
Description: "Ausdehnung der größten metastatischen Infiltration: 1.2 mm"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85351-5 "Lymph node metastatic deposit.max dimension [Length] in Cancer specimen by Light microscopy"
* code.text = "Ausdehnung der größten metastatischen Infiltration"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueQuantity = 1.2 'mm' "mm"
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// ============================================================================
// 13. Extranodale Infiltration (linkId 11700)
// ============================================================================

Instance: LymphNodeExtranodalExtension
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Extranodale Infiltration"
Description: "Extranodale Infiltration durch LK-Metastase: Nicht vorhanden"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85350-7 "Extranodal extension of carcinoma [Presence] in Cancer specimen by Light microscopy"
* code.text = "Extranodale Infiltration durch LK-Metastase"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Nicht vorhanden"
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// ============================================================================
// 14. pN-Kategorie (linkId 175)
// ============================================================================

Instance: LymphNodePN
InstanceOf: $mii-tnm-n
Usage: #example
Title: "pN-Kategorie - SLN"
Description: "Pathologische N-Kategorie: pN1mi(sn)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie|2026.0.0"
* status = #final
* code.coding[0] = $loinc#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* code.coding[+] = $sct#371494008 "pN category (observable entity)"
* code.text = "Regionäre Lymphknoten (pN-Kategorie)"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-n-kategorie-werte"
* valueCodeableConcept.coding.code = #pN1mi(sn)
* valueCodeableConcept.text = "pN1mi(sn)"
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// ============================================================================
// 15. Kommentar
// ============================================================================

Instance: LymphNodeComment
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Kommentar - SLN"
Description: "Kommentar zum SLN-Befund"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#22638-1 "Pathology report comments [Interpretation] Narrative"
* code.text = "Kommentar"
* subject = Reference(Patient4)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(LymphNodeReportRequest)
* valueString = "In SLN #1 Nachweis einer Mikrometastase (1,2 mm) im Randsinus. SLN #2 tumorfrei in allen Schnittstufen. Keine extranodale Infiltration. Klassifikation: pN1mi(sn). Empfehlung: Besprechung in Tumorkonferenz bzgl. weiterer axillärer Therapie."
* derivedFrom = Reference(QuestionnaireResponseLymphNode)
