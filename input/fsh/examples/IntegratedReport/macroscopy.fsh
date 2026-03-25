// =============================================================================
// MAKROSKOPISCHE BEFUNDE GROUPER - INTEGRIERTER BERICHT (BET + SLN)
// =============================================================================

Instance: IntegratedMacroscopicGrouper
InstanceOf: MII_PR_Patho_Macroscopic_Grouper
Usage: #example
Title: "Makroskopische Befunde Grouper (integriert)"
Description: "Gruppierung aller makroskopischen Messungen beider Präparate (BET + SLN)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22634-0
* subject = Reference(Patient4)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* derivedFrom[+] = Reference(IntegratedQRBreastResection)
* derivedFrom[+] = Reference(IntegratedQRLymphNode)

// BET Makro-Findings
* hasMember[+] = Reference(IntegratedMacroLength)
* hasMember[+] = Reference(IntegratedMacroWidth)
* hasMember[+] = Reference(IntegratedMacroDepth)
* hasMember[+] = Reference(IntegratedMacroWeight)
* hasMember[+] = Reference(IntegratedMacroQuadrant)
* hasMember[+] = Reference(IntegratedMacroClock)
* hasMember[+] = Reference(IntegratedMacroDistanceNipple)
* hasMember[+] = Reference(IntegratedMacroBlockCount)
// SLN Makro-Findings
* hasMember[+] = Reference(IntegratedMacroSLN1Size)
* hasMember[+] = Reference(IntegratedMacroSLN2Size)


// =============================================================================
// BET - Länge (linkId 10900)
// =============================================================================

Instance: IntegratedMacroLength
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Probengröße 1 (Länge) (integriert)"
Description: "Maximale Länge des BET-Exzisionspräparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44629-4 "Specimen size.maximum dimension in Breast tumor"
* code.text = "ProbeGröße1"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedBETSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 42 'mm' "mm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(IntegratedQRBreastResection)

// =============================================================================
// BET - Breite (linkId 10910)
// =============================================================================

Instance: IntegratedMacroWidth
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Probengröße 2 (Breite) (integriert)"
Description: "Breite des BET-Exzisionspräparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44630-2 "Specimen size additional dimension 1 in Breast tumor"
* code.text = "ProbeGröße2"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedBETSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 35 'mm' "mm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(IntegratedQRBreastResection)

// =============================================================================
// BET - Tiefe (linkId 10920)
// =============================================================================

Instance: IntegratedMacroDepth
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Probengröße 3 (Tiefe) (integriert)"
Description: "Tiefe des BET-Exzisionspräparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44631-0 "Specimen size additional dimension 2 in Breast tumor"
* code.text = "ProbeGröße3"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedBETSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 18 'mm' "mm"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(IntegratedQRBreastResection)

// =============================================================================
// BET - Gewicht (linkId 10890)
// =============================================================================

Instance: IntegratedMacroWeight
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Gewicht (integriert)"
Description: "Gewicht des BET-Exzisionspräparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#29638-4 "Specimen wt Tiss Qn"
* code.text = "Gewicht der Probe"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedBETSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 10 'g' "g"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* derivedFrom = Reference(IntegratedQRBreastResection)

// =============================================================================
// BET - Quadrant (linkId 10030)
// =============================================================================

Instance: IntegratedMacroQuadrant
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Quadrant (integriert)"
Description: "Quadrantenlokalisation des Tumors"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#42799-7 "Quadrant Breast"
* code.text = "Quadrantenlokalisaion"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedBETSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueCodeableConcept = $sct#33564002 "Structure of lower outer quadrant of breast (body structure)"
* valueCodeableConcept.text = "Unterer äußerer Quadrant"
* derivedFrom = Reference(IntegratedQRBreastResection)

// =============================================================================
// BET - Zifferblatt (linkId 10040)
// =============================================================================

Instance: IntegratedMacroClock
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Zifferblattlokalisation (integriert)"
Description: "Uhrzeigerlokalisation des Tumors"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code.coding[0] = $loinc#85332-5 "Radial position in breast [Angle] in Breast cancer specimen"
* code.coding[+] = $sct#3980001000004105 "Radial location of primary malignant neoplasm in excised breast specimen (observable entity)"
* code.text = "Zifferblattlokalisation"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedBETSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 5 '{clock position}' "o'clock"
* derivedFrom = Reference(IntegratedQRBreastResection)

// =============================================================================
// BET - Abstand Mamille (linkId 10070)
// =============================================================================

Instance: IntegratedMacroDistanceNipple
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Abstand von Mamille (integriert)"
Description: "Abstand des Tumors von der Mamille"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $sct#1240401000 "Distance of primary malignant neoplasm of breast to nipple in excised breast specimen (observable entity)"
* code.text = "Abstand von der Mamille"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedBETSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 50 'mm' "mm"
* derivedFrom = Reference(IntegratedQRBreastResection)

// =============================================================================
// BET - Anzahl Paraffinblöcke
// =============================================================================

Instance: IntegratedMacroBlockCount
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Paraffinblöcke (integriert)"
Description: "Anzahl der angefertigten Paraffinblöcke"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $sct#3100001000004109 "Number of paraffin embedded tissue blocks examined from excised specimen (observable entity)"
* code.text = "Anzahl Paraffinblöcke"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedBETSpecimenPart)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 6 '{blocks}' "Blöcke"
* derivedFrom = Reference(IntegratedQRBreastResection)

// =============================================================================
// SLN #1 Größe
// =============================================================================

Instance: IntegratedMacroSLN1Size
InstanceOf: $mii-patho-finding
Usage: #example
Title: "SLN #1 Größe (integriert)"
Description: "Makroskopische Größe des Sentinel-Lymphknotens #1: 12 x 8 x 6 mm"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* code.text = "SLN #1 Größe"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenBlock01)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueString = "12 x 8 x 6 mm, Patentblau-markiert"
* bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"
* derivedFrom = Reference(IntegratedQRLymphNode)

// =============================================================================
// SLN #2 Größe
// =============================================================================

Instance: IntegratedMacroSLN2Size
InstanceOf: $mii-patho-finding
Usage: #example
Title: "SLN #2 Größe (integriert)"
Description: "Makroskopische Größe des Sentinel-Lymphknotens #2: 10 x 7 x 5 mm"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $loinc#44619-5 "Length of tissue core(s)"
* code.text = "SLN #2 Größe"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenBlock02)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueString = "10 x 7 x 5 mm, Patentblau-markiert"
* bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"
* derivedFrom = Reference(IntegratedQRLymphNode)
