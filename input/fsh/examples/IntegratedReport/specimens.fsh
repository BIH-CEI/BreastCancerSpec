// =============================================================================
// BET-EXZISIONSPRÄPARAT - HAUPTPRÄPARAT (PART A)
// =============================================================================

Instance: IntegratedBETSpecimenPart
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "BET-Exzisionspräparat (integriert)"
Description: "BET-Exzisionspräparat Mamma links, mit Haut, Drahthäkchen, 42x35x18mm, 10g"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://senologie.example-hospital.de/fhir/specimen/placer"
  * value = "OP25_300_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A"

* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"

* status = #available
* type = $sct#397199005 "Specimen from breast obtained by excision (specimen)"
* subject = Reference(Patient4)
* request = Reference(IntegratedReportRequest)

* collection
  * collector = Reference(BreastSurgeonPractitioner)
  * collectedDateTime = "2025-02-05T10:00:00+01:00"
  * bodySite = $sct#33564002 "Structure of lower outer quadrant of breast (body structure)"
  * method = $sct#237371007 "Wide local excision of breast lesion (procedure)"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

* note.text = "BET-Exzisionspräparat Mamma links, unterer äußerer Quadrant, 5 Uhr, 50 mm von Mamille. 42 × 35 × 18 mm, 10 g. Haut anhängend, Drahthäkchen in situ. Lamellierung in 8 Scheiben à 5 mm. Schnittfläche: grau-weißlicher Herdbefund zentral in Scheibe III–V, ca. 18 mm."

// =============================================================================
// BET - PARAFFINBLOCK 01 (Tumor zentral, Scheibe III)
// =============================================================================

Instance: IntegratedBETSpecimenBlock01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 01 BET - Tumor (integriert)"
Description: "Paraffineinbettung Tumorareal Scheibe III"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_1"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenPart)
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
// BET - PARAFFINBLOCK 02 (Tumor zentral, Scheibe V)
// =============================================================================

Instance: IntegratedBETSpecimenBlock02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 02 BET - Tumor (integriert)"
Description: "Paraffineinbettung Tumorareal Scheibe V"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_2"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenPart)
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

Instance: IntegratedBETSpecimenBlock03
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 03 BET - RR superior (integriert)"
Description: "Paraffineinbettung Resektionsrand superior"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_3"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenPart)
* collection
  * collectedDateTime = "2025-02-06T08:20:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung - RR superior"
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

Instance: IntegratedBETSpecimenBlock04
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 04 BET - RR inferior (integriert)"
Description: "Paraffineinbettung Resektionsrand inferior"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_4"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenPart)
* collection
  * collectedDateTime = "2025-02-06T08:30:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung - RR inferior"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-02-06T08:30:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// BET - PARAFFINBLOCK 05 (RR medial, Scheibe I)
// =============================================================================

Instance: IntegratedBETSpecimenBlock05
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 05 BET - RR medial (integriert)"
Description: "Paraffineinbettung Resektionsrand medial, Scheibe I"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_5"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenPart)
* collection
  * collectedDateTime = "2025-02-06T08:40:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung - RR medial, Scheibe I"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-02-06T08:40:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// BET - PARAFFINBLOCK 06 (RR lateral, Scheibe VIII)
// =============================================================================

Instance: IntegratedBETSpecimenBlock06
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 06 BET - RR lateral (integriert)"
Description: "Paraffineinbettung Resektionsrand lateral, Scheibe VIII"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_6"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenPart)
* collection
  * collectedDateTime = "2025-02-06T08:50:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung - RR lateral, Scheibe VIII"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-02-06T08:50:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// BET BLOCK01 - HE-SCHNITT 01 (Schnittstufe 1)
// =============================================================================

Instance: IntegratedBETSlideHE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01 BET - Tumor (integriert)"
Description: "HE-gefärbter Schnitt des Tumorareals, Scheibe III, Schnittstufe 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_1_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock01)
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
// BET BLOCK01 - HE-SCHNITT 02 (Schnittstufe 2)
// =============================================================================

Instance: IntegratedBETSlideHE02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02 BET - Tumor (integriert)"
Description: "HE-gefärbter Schnitt des Tumorareals, Scheibe III, Schnittstufe 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_1_1_HE_02"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock01)
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
// BET BLOCK01 - ER-IHC SCHNITT
// =============================================================================

Instance: IntegratedBETSlideER01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "ER-IHC Schnitt BET (integriert)"
Description: "Schnitt für Östrogenrezeptor-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_1_1_ER_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock01)
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
  * additive = Reference(IntegratedSubstanceER)
  * timeDateTime = "2025-02-06T10:00:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BET BLOCK01 - PR-IHC SCHNITT
// =============================================================================

Instance: IntegratedBETSlidePR01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "PR-IHC Schnitt BET (integriert)"
Description: "Schnitt für Progesteronrezeptor-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_1_1_PR_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock01)
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
  * description = "PR-Immunhistochemie"
  * procedure = $sct#117617002 "Immunohistochemistry procedure (procedure)"
  * additive = Reference(IntegratedSubstancePR)
  * timeDateTime = "2025-02-06T10:00:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BET BLOCK01 - HER2-IHC SCHNITT
// =============================================================================

Instance: IntegratedBETSlideHER2IHC01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HER2-IHC Schnitt BET (integriert)"
Description: "Schnitt für HER2-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_1_1_HER2_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock01)
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
  * description = "HER2-Immunhistochemie"
  * procedure = $sct#117617002 "Immunohistochemistry procedure (procedure)"
  * additive = Reference(IntegratedSubstanceHER2IHC)
  * timeDateTime = "2025-02-06T10:00:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BET BLOCK01 - Ki-67-IHC SCHNITT
// =============================================================================

Instance: IntegratedBETSlideKi67-01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Ki-67-IHC Schnitt BET (integriert)"
Description: "Schnitt für Ki-67-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_1_1_Ki67_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock01)
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
  * description = "Ki-67-Immunhistochemie"
  * procedure = $sct#117617002 "Immunohistochemistry procedure (procedure)"
  * additive = Reference(IntegratedSubstanceKi67)
  * timeDateTime = "2025-02-06T10:00:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BET BLOCK01 - CK18-IHC SCHNITT
// =============================================================================

Instance: IntegratedBETSlideCK18-01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "CK18-IHC Schnitt BET (integriert)"
Description: "Schnitt für Zytokeratin 18 Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_1_1_CK18_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock01)
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
  * description = "CK18-Immunhistochemie"
  * procedure = $sct#117617002 "Immunohistochemistry procedure (procedure)"
  * additive = Reference(IntegratedSubstanceCK18)
  * timeDateTime = "2025-02-06T10:00:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BET BLOCK01 - p40-IHC SCHNITT
// =============================================================================

Instance: IntegratedBETSlidep40-01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "p40-IHC Schnitt BET (integriert)"
Description: "Schnitt für p40-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_1_1_p40_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock01)
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
  * description = "p40-Immunhistochemie"
  * procedure = $sct#117617002 "Immunohistochemistry procedure (procedure)"
  * additive = Reference(IntegratedSubstancep40)
  * timeDateTime = "2025-02-06T10:00:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BET BLOCK01 - E-Cadherin-IHC SCHNITT
// =============================================================================

Instance: IntegratedBETSlideECad-01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "E-Cadherin-IHC Schnitt BET (integriert)"
Description: "Schnitt für E-Cadherin-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_1_1_ECad_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock01)
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
  * description = "E-Cadherin-Immunhistochemie"
  * procedure = $sct#117617002 "Immunohistochemistry procedure (procedure)"
  * additive = Reference(IntegratedSubstanceECadherin)
  * timeDateTime = "2025-02-06T10:00:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BET BLOCK02 - HE-SCHNITT 01 (Schnittstufe 1)
// =============================================================================

Instance: IntegratedBETSlideBlock02-HE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01 BET - Block02 (integriert)"
Description: "HE-gefärbter Schnitt Scheibe V, Schnittstufe 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_2_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock02)
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
// BET BLOCK02 - HE-SCHNITT 02 (Schnittstufe 2)
// =============================================================================

Instance: IntegratedBETSlideBlock02-HE02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02 BET - Block02 (integriert)"
Description: "HE-gefärbter Schnitt Scheibe V, Schnittstufe 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_2_1_HE_02"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock02)
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
// BET BLOCK03 - HE-SCHNITT RR superior
// =============================================================================

Instance: IntegratedBETSlideRR-Superior-HE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt RR superior BET (integriert)"
Description: "HE-gefärbter Schnitt Resektionsrand superior"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_3_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock03)
* collection
  * collectedDateTime = "2025-02-06T09:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
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
// BET BLOCK04 - HE-SCHNITT RR inferior
// =============================================================================

Instance: IntegratedBETSlideRR-Inferior-HE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt RR inferior BET (integriert)"
Description: "HE-gefärbter Schnitt Resektionsrand inferior"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_4_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock04)
* collection
  * collectedDateTime = "2025-02-06T09:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
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
// BET BLOCK05 - HE-SCHNITT RR medial
// =============================================================================

Instance: IntegratedBETSlideRR-Medial-HE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt RR medial BET (integriert)"
Description: "HE-gefärbter Schnitt Resektionsrand medial"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_5_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock05)
* collection
  * collectedDateTime = "2025-02-06T09:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
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
// BET BLOCK06 - HE-SCHNITT RR lateral
// =============================================================================

Instance: IntegratedBETSlideRR-Lateral-HE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt RR lateral BET (integriert)"
Description: "HE-gefärbter Schnitt Resektionsrand lateral"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_A_6_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedBETSpecimenBlock06)
* collection
  * collectedDateTime = "2025-02-06T09:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
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
// SLN-EXZISAT - HAUPTPRÄPARAT (PART B)
// =============================================================================

Instance: IntegratedSLNSpecimenPart
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "SLN-Exzisat (integriert)"
Description: "Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert, Patentblau-markiert"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://senologie.example-hospital.de/fhir/specimen/placer"
  * value = "OP25_300_B"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_B"

* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"

* status = #available
* type = $sct#258589002 "Lymph node specimen (specimen)"
* subject = Reference(Patient4)
* request = Reference(IntegratedReportRequest)

* collection
  * collector = Reference(BreastSurgeonPractitioner)
  * collectedDateTime = "2025-02-05T10:30:00+01:00"
  * bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"
  * method = $sct#396487001 "Sentinel lymph node biopsy (procedure)"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

* note.text = "Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet."

// =============================================================================
// SLN #1 - PARAFFINBLOCK 01
// =============================================================================

Instance: IntegratedSLNSpecimenBlock01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 01 SLN #1 (integriert)"
Description: "Paraffineinbettung SLN #1, halbiert, enthält Mikrometastase"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_B_1"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedSLNSpecimenPart)
* collection
  * collectedDateTime = "2025-02-06T08:00:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung - SLN #1 (halbiert)"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-02-06T08:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// SLN #2 - PARAFFINBLOCK 02
// =============================================================================

Instance: IntegratedSLNSpecimenBlock02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 02 SLN #2 (integriert)"
Description: "Paraffineinbettung SLN #2, halbiert, tumorfrei"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_B_2"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedSLNSpecimenPart)
* collection
  * collectedDateTime = "2025-02-06T08:10:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung - SLN #2 (halbiert)"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-02-06T08:10:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// SLN #1 - HE-SCHNITT 01 (Schnittstufe 1)
// =============================================================================

Instance: IntegratedSLNSlideHE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01 SLN #1 (integriert)"
Description: "HE-gefärbter Schnitt des SLN #1, Schnittstufe 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_B_1_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedSLNSpecimenBlock01)
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
// SLN #1 - HE-SCHNITT 02 (Schnittstufe 2)
// =============================================================================

Instance: IntegratedSLNSlideHE02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02 SLN #1 (integriert)"
Description: "HE-gefärbter Schnitt des SLN #1, Schnittstufe 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_B_1_1_HE_02"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedSLNSpecimenBlock01)
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
// SLN #2 - HE-SCHNITT 03 (Schnittstufe 1)
// =============================================================================

Instance: IntegratedSLNSlideHE03
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 03 SLN #2 (integriert)"
Description: "HE-gefärbter Schnitt des SLN #2, Schnittstufe 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_B_2_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedSLNSpecimenBlock02)
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
// SLN #2 - HE-SCHNITT 04 (Schnittstufe 2)
// =============================================================================

Instance: IntegratedSLNSlideHE04
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 04 SLN #2 (integriert)"
Description: "HE-gefärbter Schnitt des SLN #2, Schnittstufe 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300_B_2_1_HE_02"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_300"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(IntegratedSLNSpecimenBlock02)
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
