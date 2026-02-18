// =============================================================================
// MAKROSKOPISCHE BEFUNDE GROUPER - DCIS RESEKTION
// =============================================================================

Instance: DCISResectionMacroscopicGrouper
InstanceOf: MII_PR_Patho_Macroscopic_Grouper
Usage: #example
Title: "Makroskopische Befunde Grouper DCIS Resektion"
Description: "Gruppierung aller makroskopischen Messungen des Wide Local Excision Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22634-0
* subject = Reference(Patient3)
* effectiveDateTime = "2024-06-11T14:00:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueString = "Makroskopische Messungen des Wide Local Excision Präparats"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

* hasMember[+] = Reference(DCISResectionMacroscopicSpecimenWeight)
* hasMember[+] = Reference(DCISResectionMacroscopicSpecimenLength)
* hasMember[+] = Reference(DCISResectionMacroscopicSpecimenWidth)
* hasMember[+] = Reference(DCISResectionMacroscopicSpecimenDepth)

* note.text = "Makroskopische Aufarbeitung des Wide Local Excision Präparats: Gewicht 32g, Maße 4.5 × 3.2 × 2.0 cm. Orientierungsmarkierungen vorhanden. Schnittfläche mit kalkhaltigem Bezirk."

// =============================================================================
// MAKROSKOPISCHE MESSUNGEN - DCIS RESEKTION
// =============================================================================

Instance: DCISResectionMacroscopicSpecimenWeight
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Specimen Gewicht DCIS Resektion"
Description: "Gewicht des Wide Local Excision Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44668-2 "Weight of Specimen"
* code.text = "Specimen Gewicht"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenPart)
* effectiveDateTime = "2024-06-11T14:10:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 32 'g' "g"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* note.text = "Specimen Gewicht 32g"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

Instance: DCISResectionMacroscopicSpecimenLength
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Specimen Länge DCIS Resektion"
Description: "Länge des Präparats in cm"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#33728-7 "Size.maximum dimension in Tumor"
* code.text = "Specimen Länge"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenPart)
* effectiveDateTime = "2024-06-11T14:15:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 4.5 'cm' "cm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* note.text = "Specimen Länge: 4.5 cm"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

Instance: DCISResectionMacroscopicSpecimenWidth
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Specimen Breite DCIS Resektion"
Description: "Breite des Präparats in cm"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#33728-7 "Size.maximum dimension in Tumor"
* code.text = "Specimen Breite"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenPart)
* effectiveDateTime = "2024-06-11T14:16:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 3.2 'cm' "cm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* note.text = "Specimen Breite: 3.2 cm"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)

Instance: DCISResectionMacroscopicSpecimenDepth
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Specimen Tiefe DCIS Resektion"
Description: "Tiefe des Präparats in cm"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#33728-7 "Size.maximum dimension in Tumor"
* code.text = "Specimen Tiefe"
* subject = Reference(Patient3)
* specimen = Reference(DCISResectionSpecimenPart)
* effectiveDateTime = "2024-06-11T14:17:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 2.0 'cm' "cm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* note.text = "Specimen Tiefe: 2.0 cm"
* derivedFrom = Reference(QuestionnaireResponseDCISResection)
