// =============================================================================
// MAKROSKOPISCHE BEFUNDE GROUPER - STANZBIOPSIE
// =============================================================================

Instance: CoreNeedleBiopsyMacroscopicGrouper
InstanceOf: MII_PR_Patho_Macroscopic_Grouper
Usage: #example
Title: "Makroskopische Befunde Grouper Stanzbiopsie"
Description: "Gruppierung aller makroskopischen Messungen der Stanzzylinder"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22634-0
* subject = Reference(Patient4)
* effectiveDateTime = "2025-01-16T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* bodySite = $sct#110502005 "Structure of lower outer quadrant of left breast (body structure)"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

* hasMember[+] = Reference(CoreNeedleBiopsyMacroscopicTotalLength)
* hasMember[+] = Reference(CoreNeedleBiopsyMacroscopicCylinderCount)
* hasMember[+] = Reference(CoreNeedleBiopsyMacroscopicBlockCount)


// Gesamtlänge der Stanzzylinder
Instance: CoreNeedleBiopsyMacroscopicTotalLength
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Gesamtlänge Stanzzylinder"
Description: "Gesamtlänge aller Stanzzylinder zusammen"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#33728-7 "Size.maximum dimension in Tumor"
* code.text = "Gesamtlänge der Stanzzylinder"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenPart)
* effectiveDateTime = "2025-01-16T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 22 'mm' "mm"
* bodySite = $sct#110502005 "Structure of lower outer quadrant of left breast (body structure)"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// Anzahl Stanzzylinder
Instance: CoreNeedleBiopsyMacroscopicCylinderCount
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Stanzzylinder"
Description: "Anzahl der eingesendeten Stanzzylinder"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $sct#246205007 "Quantity (attribute)"
* code.text = "Anzahl Stanzzylinder"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenPart)
* effectiveDateTime = "2025-01-16T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 2 '{count}' "count"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)

// Anzahl Paraffinblöcke
Instance: CoreNeedleBiopsyMacroscopicBlockCount
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Paraffinblöcke Stanzbiopsie"
Description: "Anzahl der erstellten Paraffinblöcke"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $sct#246205007 "Quantity (attribute)"
* code.text = "Anzahl Paraffinblöcke"
* subject = Reference(Patient4)
* specimen = Reference(CoreNeedleBiopsySpecimenPart)
* effectiveDateTime = "2025-01-16T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 1 '{count}' "count"
* derivedFrom = Reference(QuestionnaireResponseCoreNeedleBiopsy)
