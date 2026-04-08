// =============================================================================
// BET-EXZISIONSPRÄPARAT - HAUPTPRÄPARAT (PART)
// =============================================================================

Instance: BreastResectionSpecimenPart
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "BET-Exzisionspräparat (Einsendespecimen)"
Description: "BET-Exzisionspräparat Mamma links, mit Haut, Drahthäkchen, 42x35x18mm, 10g"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://senologie.example-hospital.de/fhir/specimen/placer"
  * value = "OP25_210_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A"

* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"

* status = #available
* type = $sct#397199005 "Specimen from breast obtained by excision (specimen)"
* subject = Reference(Patient4)
* request = Reference(BreastResectionReportRequest)

* collection
  * collector = Reference(BreastSurgeonPractitioner)
  * collectedDateTime = "2025-02-05T10:00:00+01:00"
  * bodySite = $sct#33564002 "Structure of lower outer quadrant of breast (body structure)"
  * method = $sct#237371007 "Wide local excision of breast lesion (procedure)"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

* note.text = "BET-Exzisionspräparat Mamma links, unterer äußerer Quadrant, 5 Uhr, 50 mm von Mamille. Mit Haut, Drahthäkchen in situ."

// =============================================================================
// BET - PARAFFINBLOCK 01 (Tumor zentral, Scheibe III, inkl. RR anterior/posterior)
// =============================================================================

Instance: BreastResectionSpecimenBlock01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 01 BET - Tumor zentral (Scheibe III)"
Description: "Paraffineinbettung des zentralen Tumorareals, Scheibe III, inkl. RR anterior/posterior"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenPart)
* collection
  * collectedDateTime = "2025-02-06T08:00:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung - Tumor zentral, Scheibe III"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-02-06T08:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// BET - PARAFFINBLOCK 02 (Tumor zentral, Scheibe V, inkl. RR anterior/posterior)
// =============================================================================

Instance: BreastResectionSpecimenBlock02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 02 BET - Tumor zentral (Scheibe V)"
Description: "Paraffineinbettung des zentralen Tumorareals, Scheibe V, inkl. RR anterior/posterior"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_2"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenPart)
* collection
  * collectedDateTime = "2025-02-06T08:10:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung - Tumor zentral, Scheibe V"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-02-06T08:10:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// BET - PARAFFINBLOCK 03 (RR superior)
// =============================================================================

Instance: BreastResectionSpecimenBlock03
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 03 BET - RR superior"
Description: "Paraffineinbettung Resektionsrand superior"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_3"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenPart)
* collection
  * collectedDateTime = "2025-02-06T08:20:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung - Resektionsrand superior"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-02-06T08:20:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// BET - PARAFFINBLOCK 04 (RR inferior)
// =============================================================================

Instance: BreastResectionSpecimenBlock04
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 04 BET - RR inferior"
Description: "Paraffineinbettung Resektionsrand inferior"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_4"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenPart)
* collection
  * collectedDateTime = "2025-02-06T08:25:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung - Resektionsrand inferior"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-02-06T08:25:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// BET - PARAFFINBLOCK 05 (RR medial, Scheibe I)
// =============================================================================

Instance: BreastResectionSpecimenBlock05
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 05 BET - RR medial (Scheibe I)"
Description: "Paraffineinbettung Resektionsrand medial, Scheibe I"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_5"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenPart)
* collection
  * collectedDateTime = "2025-02-06T08:30:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung - Resektionsrand medial (Scheibe I)"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-02-06T08:30:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// BET - PARAFFINBLOCK 06 (RR lateral, Scheibe VIII)
// =============================================================================

Instance: BreastResectionSpecimenBlock06
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 06 BET - RR lateral (Scheibe VIII)"
Description: "Paraffineinbettung Resektionsrand lateral, Scheibe VIII"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_6"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenPart)
* collection
  * collectedDateTime = "2025-02-06T08:35:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung - Resektionsrand lateral (Scheibe VIII)"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-02-06T08:35:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// BLOCK01 - HE-SCHNITT 01 (Schnittstufe 1)
// =============================================================================

Instance: BreastResectionSpecimenSlideHE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01 BET - Tumor (Block01)"
Description: "HE-gefärbter Schnitt des Tumorareals, Scheibe III, Schnittstufe 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock01)
* collection
  * collectedDateTime = "2025-02-06T09:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung (Schnittstufe 1)"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:00:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-02-06T09:15:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BLOCK01 - HE-SCHNITT 02 (Schnittstufe 2)
// =============================================================================

Instance: BreastResectionSpecimenSlideHE02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02 BET - Tumor (Block01)"
Description: "HE-gefärbter Schnitt des Tumorareals, Scheibe III, Schnittstufe 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_HE_02"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock01)
* collection
  * collectedDateTime = "2025-02-06T09:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung (Schnittstufe 2)"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:00:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-02-06T09:15:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BLOCK01 - ER-IHC SCHNITT (1x)
// =============================================================================

Instance: BreastResectionSpecimenSlideER01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "ER-IHC Schnitt BET (Block01)"
Description: "Schnitt für Östrogenrezeptor-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_ER_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock01)
* collection
  * collectedDateTime = "2025-02-06T09:30:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:30:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "ER-Immunhistochemie"
  * procedure = $sct#117617002 "Immunohistochemistry procedure (procedure)"
  * additive = Reference(BreastResectionSubstanceER)
  * timeDateTime = "2025-02-06T10:00:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BLOCK01 - PR-IHC SCHNITT (1x)
// =============================================================================

Instance: BreastResectionSpecimenSlidePR01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "PR-IHC Schnitt BET (Block01)"
Description: "Schnitt für Progesteronrezeptor-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_PR_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock01)
* collection
  * collectedDateTime = "2025-02-06T09:35:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:35:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "PR-Immunhistochemie"
  * procedure = $sct#117617002 "Immunohistochemistry procedure (procedure)"
  * additive = Reference(BreastResectionSubstancePR)
  * timeDateTime = "2025-02-06T10:05:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BLOCK01 - HER2-IHC SCHNITT (1x)
// =============================================================================

Instance: BreastResectionSpecimenSlideHER2IHC01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HER2-IHC Schnitt BET (Block01)"
Description: "Schnitt für HER2-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_HER2IHC_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock01)
* collection
  * collectedDateTime = "2025-02-06T09:40:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:40:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HER2-Immunhistochemie"
  * procedure = $sct#433114000 "Human epidermal growth factor receptor 2 gene detection by immunohistochemistry (procedure)"
  * additive = Reference(BreastResectionSubstanceHER2IHC)
  * timeDateTime = "2025-02-06T10:30:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BLOCK01 - Ki67-IHC SCHNITT (1x)
// =============================================================================

Instance: BreastResectionSpecimenSlideKi67-01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Ki67-IHC Schnitt BET (Block01)"
Description: "Schnitt für Ki-67 Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_Ki67_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock01)
* collection
  * collectedDateTime = "2025-02-06T09:45:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:45:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Ki-67 Immunhistochemie"
  * procedure = $sct#117617002 "Immunohistochemistry procedure (procedure)"
  * additive = Reference(BreastResectionSubstanceKi67)
  * timeDateTime = "2025-02-06T10:10:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BLOCK01 - CK18-IHC SCHNITT (1x)
// =============================================================================

Instance: BreastResectionSpecimenSlideCK18-01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "CK18-IHC Schnitt BET (Block01)"
Description: "Schnitt für Zytokeratin 18 Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_CK18_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock01)
* collection
  * collectedDateTime = "2025-02-06T09:50:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:50:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "CK18-Immunhistochemie"
  * procedure = $sct#117617002 "Immunohistochemistry procedure (procedure)"
  * additive = Reference(BreastResectionSubstanceCK18)
  * timeDateTime = "2025-02-06T10:35:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BLOCK01 - p40-IHC SCHNITT (1x)
// =============================================================================

Instance: BreastResectionSpecimenSlidep40-01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "p40-IHC Schnitt BET (Block01)"
Description: "Schnitt für p40 Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_p40_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock01)
* collection
  * collectedDateTime = "2025-02-06T09:55:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:55:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "p40-Immunhistochemie"
  * procedure = $sct#117617002 "Immunohistochemistry procedure (procedure)"
  * additive = Reference(BreastResectionSubstancep40)
  * timeDateTime = "2025-02-06T10:40:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BLOCK01 - E-Cadherin-IHC SCHNITT (1x)
// =============================================================================

Instance: BreastResectionSpecimenSlideECad-01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "E-Cadherin-IHC Schnitt BET (Block01)"
Description: "Schnitt für E-Cadherin Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_ECad_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock01)
* collection
  * collectedDateTime = "2025-02-06T10:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T10:00:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "E-Cadherin-Immunhistochemie"
  * procedure = $sct#117617002 "Immunohistochemistry procedure (procedure)"
  * additive = Reference(BreastResectionSubstanceECadherin)
  * timeDateTime = "2025-02-06T10:45:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BLOCK02 - HE-SCHNITTE (2x, Scheibe V)
// =============================================================================

Instance: BreastResectionSpecimenSlideBlock02-HE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01 BET - Tumor (Block02)"
Description: "HE-gefärbter Schnitt des Tumorareals, Scheibe V, Schnittstufe 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_2_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock02)
* collection
  * collectedDateTime = "2025-02-06T09:20:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung (Schnittstufe 1)"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:20:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-02-06T09:35:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: BreastResectionSpecimenSlideBlock02-HE02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02 BET - Tumor (Block02)"
Description: "HE-gefärbter Schnitt des Tumorareals, Scheibe V, Schnittstufe 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_2_1_HE_02"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock02)
* collection
  * collectedDateTime = "2025-02-06T09:20:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung (Schnittstufe 2)"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:20:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-02-06T09:35:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BLOCK03 - HE-SCHNITT RR superior (1x)
// =============================================================================

Instance: BreastResectionSpecimenSlideRR-Superior-HE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt BET - RR superior (Block03)"
Description: "HE-gefärbter Schnitt Resektionsrand superior"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_3_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock03)
* collection
  * collectedDateTime = "2025-02-06T09:25:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:25:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-02-06T09:40:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BLOCK04 - HE-SCHNITT RR inferior (1x)
// =============================================================================

Instance: BreastResectionSpecimenSlideRR-Inferior-HE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt BET - RR inferior (Block04)"
Description: "HE-gefärbter Schnitt Resektionsrand inferior"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_4_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock04)
* collection
  * collectedDateTime = "2025-02-06T09:28:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:28:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-02-06T09:43:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BLOCK05 - HE-SCHNITT RR medial (1x)
// =============================================================================

Instance: BreastResectionSpecimenSlideRR-Medial-HE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt BET - RR medial (Block05)"
Description: "HE-gefärbter Schnitt Resektionsrand medial, Scheibe I"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_5_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock05)
* collection
  * collectedDateTime = "2025-02-06T09:31:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:31:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-02-06T09:46:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BLOCK06 - HE-SCHNITT RR lateral (1x)
// =============================================================================

Instance: BreastResectionSpecimenSlideRR-Lateral-HE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt BET - RR lateral (Block06)"
Description: "HE-gefärbter Schnitt Resektionsrand lateral, Scheibe VIII"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_6_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(BreastResectionSpecimenBlock06)
* collection
  * collectedDateTime = "2025-02-06T09:34:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:34:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-02-06T09:49:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"
