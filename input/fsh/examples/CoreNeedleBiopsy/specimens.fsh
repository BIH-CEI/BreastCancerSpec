// =============================================================================
// STANZBIOPSIE - HAUPTPRÄPARAT (PART)
// =============================================================================

Instance: CoreNeedleBiopsySpecimenPart
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Stanzzylinder-Präparat (Einsendespecimen)"
Description: "2 HG-Stanzzylinder Mamma links, 5 Uhr, 5 cm von Mamille"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://senologie.example-hospital.de/fhir/specimen/placer"
  * value = "BX25_105_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A"

* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105"

* status = #available
* type = $sct#122737001 "Specimen from breast obtained by core needle biopsy (specimen)"
* subject = Reference(Patient4)
* request = Reference(CoreNeedleBiopsyReportRequest)

* collection
  * collector = Reference(BreastSurgeonPractitioner)
  * collectedDateTime = "2025-01-15T09:30:00+01:00"
  * bodySite = $sct#33564002 "Structure of lower outer quadrant of breast (body structure)"
  * method = $sct#9911007 "Core needle biopsy (procedure)"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

* note.text = "HG-Stanzen/Mamma, li., 5 Uhr, 5 cm von Mamille, US-gestützte Stanzbiopsie. 2 Stanzzylinder, zusammen 22 mm, mittelfest, grauweißlich, Bleistiftminenstärke."

// =============================================================================
// STANZBIOPSIE - PARAFFINBLOCK 01
// =============================================================================

Instance: CoreNeedleBiopsySpecimenBlock01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 01 Stanzbiopsie"
Description: "Paraffineinbettung der Stanzzylinder Block 01"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(CoreNeedleBiopsySpecimenPart)
* collection
  * collectedDateTime = "2025-01-16T08:00:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-01-16T08:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// STANZBIOPSIE - HE-SCHNITT 01 (Schnittstufe 1)
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlideHE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01 Stanzbiopsie"
Description: "Hämatoxylin-Eosin gefärbter Schnitt, Schnittstufe 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(CoreNeedleBiopsySpecimenBlock01)
* collection
  * collectedDateTime = "2025-01-16T09:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung (Schnittstufe 1)"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-01-16T09:00:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-01-16T09:15:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - HE-SCHNITT 02 (Schnittstufe 2)
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlideHE02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02 Stanzbiopsie"
Description: "Hämatoxylin-Eosin gefärbter Schnitt, Schnittstufe 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_HE_02"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(CoreNeedleBiopsySpecimenBlock01)
* collection
  * collectedDateTime = "2025-01-16T09:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung (Schnittstufe 2)"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-01-16T09:00:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-01-16T09:15:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - HE-SCHNITT 03 (Schnittstufe 3)
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlideHE03
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 03 Stanzbiopsie"
Description: "Hämatoxylin-Eosin gefärbter Schnitt, Schnittstufe 3"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_HE_03"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(CoreNeedleBiopsySpecimenBlock01)
* collection
  * collectedDateTime = "2025-01-16T09:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung (Schnittstufe 3)"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-01-16T09:00:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-01-16T09:15:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - HE-SCHNITT 04 (Schnittstufe 4)
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlideHE04
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 04 Stanzbiopsie"
Description: "Hämatoxylin-Eosin gefärbter Schnitt, Schnittstufe 4"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_HE_04"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(CoreNeedleBiopsySpecimenBlock01)
* collection
  * collectedDateTime = "2025-01-16T09:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung (Schnittstufe 4)"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-01-16T09:00:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-01-16T09:15:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - ER-IHC SCHNITT 01
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlideER01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "ER-IHC Schnitt 01 Stanzbiopsie"
Description: "Schnitt 1 für Östrogenrezeptor-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_ER_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(CoreNeedleBiopsySpecimenBlock01)
* collection
  * collectedDateTime = "2025-01-16T09:30:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-01-16T09:30:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "ER-Immunhistochemie"
  * procedure = $sct#70871006 "Incisional biopsy (procedure)"
  * timeDateTime = "2025-01-16T10:00:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - ER-IHC SCHNITT 02
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlideER02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "ER-IHC Schnitt 02 Stanzbiopsie"
Description: "Schnitt 2 für Östrogenrezeptor-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_ER_02"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(CoreNeedleBiopsySpecimenBlock01)
* collection
  * collectedDateTime = "2025-01-16T09:30:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-01-16T09:30:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "ER-Immunhistochemie"
  * procedure = $sct#70871006 "Incisional biopsy (procedure)"
  * timeDateTime = "2025-01-16T10:00:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - PR-IHC SCHNITT 01
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlidePR01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "PR-IHC Schnitt 01 Stanzbiopsie"
Description: "Schnitt 1 für Progesteronrezeptor-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_PR_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(CoreNeedleBiopsySpecimenBlock01)
* collection
  * collectedDateTime = "2025-01-16T09:35:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-01-16T09:35:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "PR-Immunhistochemie"
  * procedure = $sct#70871006 "Incisional biopsy (procedure)"
  * timeDateTime = "2025-01-16T10:05:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - PR-IHC SCHNITT 02
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlidePR02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "PR-IHC Schnitt 02 Stanzbiopsie"
Description: "Schnitt 2 für Progesteronrezeptor-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_PR_02"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(CoreNeedleBiopsySpecimenBlock01)
* collection
  * collectedDateTime = "2025-01-16T09:35:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-01-16T09:35:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "PR-Immunhistochemie"
  * procedure = $sct#70871006 "Incisional biopsy (procedure)"
  * timeDateTime = "2025-01-16T10:05:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - HER2-B-DISH SCHNITT 01
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlideHER2-01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HER2-B-DISH Schnitt 01 Stanzbiopsie"
Description: "Schnitt 1 für HER2 Bright-field Dual In-Situ Hybridization"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_HER2_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(CoreNeedleBiopsySpecimenBlock01)
* collection
  * collectedDateTime = "2025-01-16T09:40:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-01-16T09:40:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HER2 Bright-field Dual In-Situ Hybridization (B-DISH)"
  * procedure = $sct#426329006 "Fluorescence in situ hybridization (procedure)"
  * timeDateTime = "2025-01-16T10:30:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - HER2-B-DISH SCHNITT 02
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlideHER2-02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HER2-B-DISH Schnitt 02 Stanzbiopsie"
Description: "Schnitt 2 für HER2 Bright-field Dual In-Situ Hybridization"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_HER2_02"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(CoreNeedleBiopsySpecimenBlock01)
* collection
  * collectedDateTime = "2025-01-16T09:40:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-01-16T09:40:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HER2 Bright-field Dual In-Situ Hybridization (B-DISH)"
  * procedure = $sct#426329006 "Fluorescence in situ hybridization (procedure)"
  * timeDateTime = "2025-01-16T10:30:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - Ki67-IHC SCHNITT 01
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlideKi67-01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Ki67-IHC Schnitt 01 Stanzbiopsie"
Description: "Schnitt 1 für Ki-67 Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_Ki67_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(CoreNeedleBiopsySpecimenBlock01)
* collection
  * collectedDateTime = "2025-01-16T09:45:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-01-16T09:45:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Ki-67 Immunhistochemie"
  * procedure = $sct#70871006 "Incisional biopsy (procedure)"
  * timeDateTime = "2025-01-16T10:10:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - Ki67-IHC SCHNITT 02
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlideKi67-02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Ki67-IHC Schnitt 02 Stanzbiopsie"
Description: "Schnitt 2 für Ki-67 Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_Ki67_02"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(CoreNeedleBiopsySpecimenBlock01)
* collection
  * collectedDateTime = "2025-01-16T09:45:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-01-16T09:45:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Ki-67 Immunhistochemie"
  * procedure = $sct#70871006 "Incisional biopsy (procedure)"
  * timeDateTime = "2025-01-16T10:10:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"
