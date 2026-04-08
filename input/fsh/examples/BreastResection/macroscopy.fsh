// =============================================================================
// MAKROSKOPISCHE BEFUNDE GROUPER - BET MAMMA
// =============================================================================

Instance: BreastResectionMacroscopicGrouper
InstanceOf: MII_PR_Patho_Macroscopic_Grouper
Usage: #example
Title: "Makroskopische Befunde Grouper BET"
Description: "Gruppierung aller makroskopischen Messungen des BET-Exzisionspräparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2026.0.0"
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
* hasMember[+] = Reference(BreastResectionMacroQuadrant)
* hasMember[+] = Reference(BreastResectionMacroClock)
* hasMember[+] = Reference(BreastResectionMacroDistanceNipple)
* hasMember[+] = Reference(BreastResectionMacroBlockCount)


// --- Länge (linkId 10900) ---
Instance: BreastResectionMacroLength
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Probengröße 1 (Länge) BET"
Description: "Maximale Länge des BET-Exzisionspräparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
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
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
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
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
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
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
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

// --- Quadrant (linkId 10030) ---
Instance: BreastResectionMacroQuadrant
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Quadrant BET"
Description: "Quadrantenlokalisation des Tumors"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#42799-7 "Quadrant Breast"
* code.text = "Quadrantenlokalisaion"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueCodeableConcept = $sct#33564002 "Structure of lower outer quadrant of breast (body structure)"
* valueCodeableConcept.text = "Unterer äußerer Quadrant"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- Zifferblatt (linkId 10040) ---
Instance: BreastResectionMacroClock
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Zifferblattlokalisation BET"
Description: "Uhrzeigerlokalisation des Tumors"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code.coding[0] = $loinc#85332-5 "Radial position in breast [Angle] in Breast cancer specimen"
* code.coding[+] = $sct#3980001000004105 "Radial location of primary malignant neoplasm in excised breast specimen (observable entity)"
* code.text = "Zifferblattlokalisation"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 5 '{clock position}' "o'clock"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- Abstand Mamille (linkId 10070) ---
Instance: BreastResectionMacroDistanceNipple
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Abstand von Mamille BET"
Description: "Abstand des Tumors von der Mamille"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $sct#1240401000 "Distance of primary malignant neoplasm of breast to nipple in excised breast specimen (observable entity)"
* code.text = "Abstand von der Mamille"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 50 'mm' "mm"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)
// --- Anzahl Paraffinblöcke ---
Instance: BreastResectionMacroBlockCount
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Paraffinblöcke BET"
Description: "Anzahl der angefertigten Paraffinblöcke"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
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
