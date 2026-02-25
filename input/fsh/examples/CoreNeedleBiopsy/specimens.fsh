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
* type = $sct#122548005 "Specimen obtained by biopsy of breast using needle (specimen)"
* subject = Reference(Patient4)
* request = Reference(CoreNeedleBiopsyReportRequest)

* collection
  * collector = Reference(BreastSurgeonPractitioner)
  * collectedDateTime = "2025-01-15T09:30:00+01:00"
  * bodySite = $sct#49058007 "Structure of lower outer quadrant of breast (body structure)"
  * method = $sct#394887005 "Core needle biopsy (procedure)"

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
  * method = $sct#787377000 "Gross examination and target selection of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin-fixed paraffin-embedded tissue specimen (procedure)"
  * timeDateTime = "2025-01-16T08:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#1003707006 "Paraffin block (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// STANZBIOPSIE - HE-SCHNITTE (4 Schnitte)
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlideHE
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitte Stanzbiopsie"
Description: "4 Hämatoxylin-Eosin gefärbte Schnitte der Stanzzylinder"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_HE"
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
  * description = "Schnittherstellung (4 Schnittstufen)"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2025-01-16T09:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "HE-Färbung"
  * procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
  * timeDateTime = "2025-01-16T09:15:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - ER-IHC SCHNITTE (2 Schnitte)
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlideER
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "ER-IHC Schnitte Stanzbiopsie"
Description: "2 Schnitte für Östrogenrezeptor-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_ER"
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
  * description = "Schnittherstellung (2 Schnitte)"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2025-01-16T09:30:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "ER-Immunhistochemie"
  * procedure = $sct#86273004 "Biopsy by incision (procedure)"
  * timeDateTime = "2025-01-16T10:00:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - PR-IHC SCHNITTE (2 Schnitte)
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlidePR
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "PR-IHC Schnitte Stanzbiopsie"
Description: "2 Schnitte für Progesteronrezeptor-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_PR"
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
  * description = "Schnittherstellung (2 Schnitte)"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2025-01-16T09:35:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "PR-Immunhistochemie"
  * procedure = $sct#86273004 "Biopsy by incision (procedure)"
  * timeDateTime = "2025-01-16T10:05:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - HER2-B-DISH SCHNITTE (2 Schnitte)
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlideHER2
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HER2-B-DISH Schnitte Stanzbiopsie"
Description: "2 Schnitte für HER2 Bright-field Dual In-Situ Hybridization"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_HER2"
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
  * description = "Schnittherstellung (2 Schnitte)"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2025-01-16T09:40:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "HER2 Bright-field Dual In-Situ Hybridization (B-DISH)"
  * procedure = $sct#702675006 "Fluorescence in situ hybridization (procedure)"
  * timeDateTime = "2025-01-16T10:30:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZBIOPSIE - Ki67-IHC SCHNITTE (2 Schnitte)
// =============================================================================

Instance: CoreNeedleBiopsySpecimenSlideKi67
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Ki67-IHC Schnitte Stanzbiopsie"
Description: "2 Schnitte für Ki-67 Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_105_A_1_1_Ki67"
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
  * description = "Schnittherstellung (2 Schnitte)"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2025-01-16T09:45:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "Ki-67 Immunhistochemie"
  * procedure = $sct#86273004 "Biopsy by incision (procedure)"
  * timeDateTime = "2025-01-16T10:10:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"
