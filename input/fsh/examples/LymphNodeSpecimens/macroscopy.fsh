// =============================================================================
// MAKROSKOPISCHE BEFUNDE GROUPER - LYMPHKNOTEN SPECIMENS
// =============================================================================

Instance: LymphNodeSpecimensMacroscopicGrouper
InstanceOf: MII_PR_Patho_Macroscopic_Grouper
Usage: #example
Title: "Makroskopische Befunde Grouper Lymphknoten"
Description: "Gruppierung aller makroskopischen Messungen der Sentinel-Lymphknoten"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22634-0
* subject = Reference(Patient1)
* effectiveDateTime = "2024-07-16T14:00:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueString = "Makroskopische Befunde der Sentinel-Lymphknoten"
* bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseLymphNodeSpecimens)

* hasMember[+] = Reference(LymphNodeSpecimensMacroscopicSLN1Size)
* hasMember[+] = Reference(LymphNodeSpecimensMacroscopicSLN2Size)
* hasMember[+] = Reference(LymphNodeSpecimensMacroscopicLNCount)

* note.text = "2 Sentinel-Lymphknoten erhalten, beide makroskopisch unauffällig. SLN1: 12 × 8 × 6 mm, blau markiert. SLN2: 10 × 7 × 5 mm, blau markiert."

// SLN1 Größe
Instance: LymphNodeSpecimensMacroscopicSLN1Size
InstanceOf: $mii-patho-finding
Usage: #example
Title: "SLN1 Größe Lymphknoten"
Description: "Größe des Sentinel-Lymphknotens 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#33728-7 "Size.maximum dimension in Tumor"
* code.text = "Sentinel-Lymphknoten 1 Größe"
* subject = Reference(Patient1)
* specimen = Reference(LymphNodeSpecimensSpecimenPartSLN1)
* effectiveDateTime = "2024-07-16T14:10:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 12 'mm' "mm"
* note.text = "12 × 8 × 6 mm, blau markiert, makroskopisch unauffällig"
* bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseLymphNodeSpecimens)

// SLN2 Größe
Instance: LymphNodeSpecimensMacroscopicSLN2Size
InstanceOf: $mii-patho-finding
Usage: #example
Title: "SLN2 Größe Lymphknoten"
Description: "Größe des Sentinel-Lymphknotens 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#33728-7 "Size.maximum dimension in Tumor"
* code.text = "Sentinel-Lymphknoten 2 Größe"
* subject = Reference(Patient1)
* specimen = Reference(LymphNodeSpecimensSpecimenPartSLN2)
* effectiveDateTime = "2024-07-16T14:15:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 10 'mm' "mm"
* note.text = "10 × 7 × 5 mm, blau markiert, makroskopisch unauffällig"
* bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseLymphNodeSpecimens)

// Anzahl identifizierter Lymphknoten
Instance: LymphNodeSpecimensMacroscopicLNCount
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl identifizierter Lymphknoten"
Description: "Anzahl der makroskopisch identifizierten Sentinel-Lymphknoten"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#21894-1 "Regional lymph nodes examined [#] Specimen"
* code.text = "Anzahl identifizierter Lymphknoten"
* subject = Reference(Patient1)
* effectiveDateTime = "2024-07-16T14:20:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 2 '{count}' "count"
* bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseLymphNodeSpecimens)
