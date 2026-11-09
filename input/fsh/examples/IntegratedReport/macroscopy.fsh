// =============================================================================
// MAKROSKOPISCHE BEFUNDE GROUPER - INTEGRIERTER BERICHT (BET + SLN)
// =============================================================================

Instance: IntegratedMacroscopicGrouper
InstanceOf: MII_PR_Patho_Macroscopic_Grouper
Usage: #example
Title: "Makroskopische Befunde Grouper (integriert)"
Description: "Gruppierung aller makroskopischen Messungen beider Präparate (BET + SLN)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2027.0.0-ballot"
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
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot"
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
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot"
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
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot"
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
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot"
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
// BET - Quadrant (linkId 10030), Zifferblatt (linkId 10040), Abstand Mamille (linkId 10070):
// in der BodyStructure IntegratedBETBodyStructure abgebildet (referenziert aus
// Specimen.collection.bodySite), daher keine eigenen Observations mehr (Issues #42/#48).
// =============================================================================

// =============================================================================
// BET - Anzahl Paraffinblöcke
// =============================================================================

Instance: IntegratedMacroBlockCount
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl Paraffinblöcke (integriert)"
Description: "Anzahl der angefertigten Paraffinblöcke"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot"
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
// Issue #42: Code von LOINC 44619-5 "Length of tissue core(s)" (Stanzen-Code, falsch) auf
// SCT 364109001 umkodiert - konsistent mit dem eigenstaendigen LymphNodeSpecimen-Szenario.

Instance: IntegratedMacroSLN1Size
InstanceOf: $mii-patho-finding
Usage: #example
Title: "SLN #1 Größe (integriert)"
Description: "Makroskopische Größe des Sentinel-Lymphknotens #1: 12 x 8 x 6 mm"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $sct#364109001 "Length of lymph node in excised specimen (observable entity)"
* code.text = "SLN #1 Größe"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenBlock01)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 12 'mm' "mm"
* note.text = "12 x 8 x 6 mm, Patentblau-markiert"
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
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22634-0
* code = $sct#364109001 "Length of lymph node in excised specimen (observable entity)"
* code.text = "SLN #2 Größe"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenBlock02)
* effectiveDateTime = "2025-02-06T08:30:00+01:00"
* performer = Reference(PathologistPractitioner)
* valueQuantity = 10 'mm' "mm"
* note.text = "10 x 7 x 5 mm, Patentblau-markiert"
* bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"
* derivedFrom = Reference(IntegratedQRLymphNode)
