// =============================================================================
// MAKROSKOPISCHE BEFUNDE GROUPER - SLN-BIOPSIE AXILLA
// =============================================================================

Instance: LymphNodeMacroscopicGrouper
InstanceOf: MII_PR_Patho_Macroscopic_Grouper
Usage: #example
Title: "Makroskopische Befunde Grouper SLN"
Description: "Gruppierung aller makroskopischen Messungen des SLN-Exzisats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22634-0
* subject = Reference(Patient4)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

* hasMember[+] = Reference(LymphNodeMacroSLN1Size)
* hasMember[+] = Reference(LymphNodeMacroSLN2Size)


// --- SLN #1 Größe ---
Instance: LymphNodeMacroSLN1Size
InstanceOf: $mii-patho-finding
Usage: #example
Title: "SLN #1 Größe"
Description: "Makroskopische Größe des Sentinel-Lymphknotens #1: 12 x 8 x 6 mm"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* code.text = "SLN #1 Größe"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenBlock01)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueString = "12 x 8 x 6 mm, Patentblau-markiert"
* bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseLymphNode)

// --- SLN #2 Größe ---
Instance: LymphNodeMacroSLN2Size
InstanceOf: $mii-patho-finding
Usage: #example
Title: "SLN #2 Größe"
Description: "Makroskopische Größe des Sentinel-Lymphknotens #2: 10 x 7 x 5 mm"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* code.text = "SLN #2 Größe"
* subject = Reference(Patient4)
* specimen = Reference(LymphNodeSpecimenBlock02)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueString = "10 x 7 x 5 mm, Patentblau-markiert"
* bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseLymphNode)
