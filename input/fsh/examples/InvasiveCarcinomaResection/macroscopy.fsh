// =============================================================================
// MAKROSKOPISCHE BEFUNDE GROUPER - INVASIVES KARZINOM RESEKTION
// =============================================================================

Instance: InvasiveCarcinomaResectionMacroscopicGrouper
InstanceOf: MII_PR_Patho_Macroscopic_Grouper
Usage: #example
Title: "Makroskopische Befunde Grouper Invasives Karzinom"
Description: "Gruppierung aller makroskopischen Messungen des Lumpektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22634-0
* subject = Reference(Patient1)
* effectiveDateTime = "2024-07-16T14:00:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueString = "Makroskopische Messungen des Lumpektomie-Präparats"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

* hasMember[+] = Reference(InvasiveCarcinomaResectionMacroscopicSpecimenWeight)
* hasMember[+] = Reference(InvasiveCarcinomaResectionMacroscopicSpecimenLength)
* hasMember[+] = Reference(InvasiveCarcinomaResectionMacroscopicSpecimenWidth)
* hasMember[+] = Reference(InvasiveCarcinomaResectionMacroscopicSpecimenDepth)
* hasMember[+] = Reference(InvasiveCarcinomaResectionMacroscopicTumorSize)

* note.text = "Makroskopische Aufarbeitung des Lumpektomie-Präparats: Gewicht 45g, Maße 5.0 × 3.5 × 2.5 cm. Orientierungsmarkierungen vorhanden. Tumor tastbar, ca. 18 mm im größten Durchmesser."

// Specimen Gewicht
Instance: InvasiveCarcinomaResectionMacroscopicSpecimenWeight
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Specimen Gewicht Invasives Karzinom"
Description: "Gewicht des Lumpektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44668-2 "Weight of Specimen"
* code.text = "Specimen Gewicht"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenPart)
* effectiveDateTime = "2024-07-16T14:10:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 45 'g' "g"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Specimen Länge
Instance: InvasiveCarcinomaResectionMacroscopicSpecimenLength
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Specimen Länge Invasives Karzinom"
Description: "Länge des Lumpektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#33728-7 "Size.maximum dimension in Tumor"
* code.text = "Specimen Länge"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenPart)
* effectiveDateTime = "2024-07-16T14:15:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 5.0 'cm' "cm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Specimen Breite
Instance: InvasiveCarcinomaResectionMacroscopicSpecimenWidth
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Specimen Breite Invasives Karzinom"
Description: "Breite des Lumpektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#33728-7 "Size.maximum dimension in Tumor"
* code.text = "Specimen Breite"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenPart)
* effectiveDateTime = "2024-07-16T14:16:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 3.5 'cm' "cm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Specimen Tiefe
Instance: InvasiveCarcinomaResectionMacroscopicSpecimenDepth
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Specimen Tiefe Invasives Karzinom"
Description: "Tiefe des Lumpektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#33728-7 "Size.maximum dimension in Tumor"
* code.text = "Specimen Tiefe"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenPart)
* effectiveDateTime = "2024-07-16T14:17:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 2.5 'cm' "cm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)

// Tumorgröße
Instance: InvasiveCarcinomaResectionMacroscopicTumorSize
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumorgröße Invasives Karzinom"
Description: "Makroskopische Tumorgröße"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#21889-1 "Size Tumor"
* subject = Reference(Patient1)
* specimen = Reference(InvasiveCarcinomaResectionSpecimenPart)
* effectiveDateTime = "2024-07-16T14:18:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 18 'mm' "mm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseInvasiveCarcinomaResection)
