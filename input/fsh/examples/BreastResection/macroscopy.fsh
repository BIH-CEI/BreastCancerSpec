// =============================================================================
// MAKROSKOPISCHE BEFUNDE GROUPER - BET MAMMA
// =============================================================================

Instance: BreastResectionMacroscopicGrouper
InstanceOf: MII_PR_Patho_Macroscopic_Grouper
Usage: #example
Title: "Makroskopische Befunde Grouper BET"
Description: "Gruppierung aller makroskopischen Messungen des BET-Exzisionspräparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2027.0.0-ballot"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22634-0
* subject = Reference(Patient4)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

* hasMember[+] = Reference(BreastResectionMacroLength)
* hasMember[+] = Reference(BreastResectionMacroWidth)
* hasMember[+] = Reference(BreastResectionMacroDepth)
* hasMember[+] = Reference(BreastResectionMacroWeight)
* hasMember[+] = Reference(BreastResectionMacroBlockCount)


// --- Länge (linkId 10900) ---
Instance: BreastResectionMacroLength
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Probengröße 1 (Länge) BET"
Description: "Maximale Länge des BET-Exzisionspräparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44629-4 "Specimen size.maximum dimension in Breast tumor"
* code.text = "ProbeGröße1"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 42 'mm' "mm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- Breite (linkId 10910) ---
Instance: BreastResectionMacroWidth
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Probengröße 2 (Breite) BET"
Description: "Breite des BET-Exzisionspräparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44630-2 "Specimen size additional dimension 1 in Breast tumor"
* code.text = "ProbeGröße2"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 35 'mm' "mm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- Tiefe (linkId 10920) ---
Instance: BreastResectionMacroDepth
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Probengröße 3 (Tiefe) BET"
Description: "Tiefe des BET-Exzisionspräparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44631-0 "Specimen size additional dimension 2 in Breast tumor"
* code.text = "ProbeGröße3"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 18 'mm' "mm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- Gewicht (linkId 10890) ---
Instance: BreastResectionMacroWeight
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Gewicht BET"
Description: "Gewicht des BET-Exzisionspräparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#29638-4 "Specimen wt Tiss Qn"
* code.text = "Gewicht der Probe"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 10 'g' "g"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// Quadrant (linkId 10030), Zifferblatt (linkId 10040) und Abstand Mamille (linkId 10070):
// in der BodyStructure BreastResectionBodyStructure abgebildet (referenziert aus
// Specimen.collection.bodySite), daher keine eigenen Observations mehr (Issues #42/#48).

// --- Anzahl Paraffinblöcke ---
Instance: BreastResectionMacroBlockCount
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Paraffinblöcke BET"
Description: "Anzahl der angefertigten Paraffinblöcke"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $sct#3100001000004109 "Number of paraffin embedded tissue blocks examined from excised specimen (observable entity)"
* code.text = "Anzahl Paraffinblöcke"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 6 '{blocks}' "Blöcke"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)
