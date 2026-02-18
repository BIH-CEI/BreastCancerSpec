// =============================================================================
// MAKROSKOPISCHE BEFUNDE GROUPER - NEOADJUVANTE THERAPIE RESEKTION
// =============================================================================

Instance: NeoadjuvantTherapyResectionMacroscopicGrouper
InstanceOf: MII_PR_Patho_Macroscopic_Grouper
Usage: #example
Title: "Makroskopische Befunde Grouper NAT Resektion"
Description: "Gruppierung aller makroskopischen Messungen des Mastektomie-Präparats nach neoadjuvanter Therapie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22634-0
* subject = Reference(Patient2)
* effectiveDateTime = "2024-09-21T14:00:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueString = "Makroskopische Messungen des Mastektomie-Präparats nach neoadjuvanter Chemotherapie"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

* hasMember[+] = Reference(NeoadjuvantTherapyResectionMacroscopicSpecimenWeight)
* hasMember[+] = Reference(NeoadjuvantTherapyResectionMacroscopicSpecimenLength)
* hasMember[+] = Reference(NeoadjuvantTherapyResectionMacroscopicSpecimenWidth)
* hasMember[+] = Reference(NeoadjuvantTherapyResectionMacroscopicSpecimenDepth)
* hasMember[+] = Reference(NeoadjuvantTherapyResectionMacroscopicTumorBed)

* note.text = "Mastektomie-Präparat: Gewicht 520g, Maße 18,0 × 14,0 × 5,0 cm. Clip-Marker im ehemaligen Tumorareal identifiziert. Tumorbett mit narbig-fibrotischer Veränderung, ca. 15 mm, kein makroskopisch erkennbares vitales Tumorgewebe."

// Specimen Gewicht
Instance: NeoadjuvantTherapyResectionMacroscopicSpecimenWeight
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Specimen Gewicht NAT Resektion"
Description: "Gewicht des Mastektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44668-2 "Weight of Specimen"
* code.text = "Specimen Gewicht"
* subject = Reference(Patient2)
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* effectiveDateTime = "2024-09-21T14:10:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 520 'g' "g"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

// Specimen Länge
Instance: NeoadjuvantTherapyResectionMacroscopicSpecimenLength
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Specimen Länge NAT Resektion"
Description: "Länge des Mastektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#33728-7 "Size.maximum dimension in Tumor"
* code.text = "Specimen Länge"
* subject = Reference(Patient2)
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* effectiveDateTime = "2024-09-21T14:15:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 18.0 'cm' "cm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

// Specimen Breite
Instance: NeoadjuvantTherapyResectionMacroscopicSpecimenWidth
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Specimen Breite NAT Resektion"
Description: "Breite des Mastektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#33728-7 "Size.maximum dimension in Tumor"
* code.text = "Specimen Breite"
* subject = Reference(Patient2)
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* effectiveDateTime = "2024-09-21T14:16:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 14.0 'cm' "cm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

// Specimen Tiefe
Instance: NeoadjuvantTherapyResectionMacroscopicSpecimenDepth
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Specimen Tiefe NAT Resektion"
Description: "Tiefe des Mastektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#33728-7 "Size.maximum dimension in Tumor"
* code.text = "Specimen Tiefe"
* subject = Reference(Patient2)
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* effectiveDateTime = "2024-09-21T14:17:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 5.0 'cm' "cm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)

// Tumorbett-Größe
Instance: NeoadjuvantTherapyResectionMacroscopicTumorBed
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumorbett-Größe NAT Resektion"
Description: "Makroskopische Tumorbett-Größe nach neoadjuvanter Therapie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#21889-1 "Size Tumor"
* code.text = "Tumorbett-Größe"
* subject = Reference(Patient2)
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* effectiveDateTime = "2024-09-21T14:18:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 15 'mm' "mm"
* note.text = "Tumorbett mit Clip-Marker, narbig-fibrotische Veränderung, kein makroskopisch vitales Tumorgewebe"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseNeoadjuvantTherapyResection)
