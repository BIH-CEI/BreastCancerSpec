// =============================================================================
// NEOADJUVANTE THERAPIE RESEKTION - HAUPTPRÄPARAT (PART)
// =============================================================================

Instance: NeoadjuvantTherapyResectionSpecimenPart
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Mastektomie-Präparat (Einsendespecimen)"
Description: "Mastektomie-Präparat nach neoadjuvanter Chemotherapie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://senologie.example-hospital.de/fhir/specimen/placer"
  * value = "BX24_102_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_102_A"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_102"
* status = #available
* type = $sct#127457009 "Tissue specimen from breast (specimen)"
* subject = Reference(Patient2)
* request = Reference(NeoadjuvantTherapyResectionReportRequest)
* collection
  * collector = Reference(BreastSurgeonPractitioner)
  * collectedDateTime = "2024-09-20T09:00:00+01:00"
  * bodySite = $sct#76752008 "Breast structure (body structure)"
  * method = $sct#172043006 "Simple mastectomy (procedure)"
* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

// =============================================================================
// PARAFFINBLÖCKE 01-05
// =============================================================================

Instance: NeoadjuvantTherapyResectionSpecimenBlock01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 01 NAT Resektion"
Description: "Paraffineinbettung Tumorbett-Region Block 01"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_102_A_1"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_102"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* collection
  * collectedDateTime = "2024-09-21T10:00:00+01:00"
  * method = $sct#787377000 "Gross examination and target selection of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin-fixed paraffin-embedded tissue specimen (procedure)"
  * timeDateTime = "2024-09-21T08:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#1003707006 "Paraffin block (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

Instance: NeoadjuvantTherapyResectionSpecimenBlock02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 02 NAT Resektion"
Description: "Paraffineinbettung Tumorbett-Region Block 02"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_102_A_2"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_102"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* collection
  * collectedDateTime = "2024-09-21T10:05:00+01:00"
  * method = $sct#787377000 "Gross examination and target selection of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin-fixed paraffin-embedded tissue specimen (procedure)"
  * timeDateTime = "2024-09-21T08:05:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#1003707006 "Paraffin block (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

Instance: NeoadjuvantTherapyResectionSpecimenBlock03
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 03 NAT Resektion"
Description: "Paraffineinbettung Tumorbett-Region Block 03"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_102_A_3"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_102"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* collection
  * collectedDateTime = "2024-09-21T10:10:00+01:00"
  * method = $sct#787377000 "Gross examination and target selection of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin-fixed paraffin-embedded tissue specimen (procedure)"
  * timeDateTime = "2024-09-21T08:10:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#1003707006 "Paraffin block (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

Instance: NeoadjuvantTherapyResectionSpecimenBlock04
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 04 NAT Resektion"
Description: "Paraffineinbettung Resektionsrand Block 04"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_102_A_4"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_102"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* collection
  * collectedDateTime = "2024-09-21T10:15:00+01:00"
  * method = $sct#787377000 "Gross examination and target selection of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin-fixed paraffin-embedded tissue specimen (procedure)"
  * timeDateTime = "2024-09-21T08:15:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#1003707006 "Paraffin block (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

Instance: NeoadjuvantTherapyResectionSpecimenBlock05
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 05 NAT Resektion"
Description: "Paraffineinbettung normales Brustgewebe Block 05"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_102_A_5"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_102"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* collection
  * collectedDateTime = "2024-09-21T10:20:00+01:00"
  * method = $sct#787377000 "Gross examination and target selection of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin-fixed paraffin-embedded tissue specimen (procedure)"
  * timeDateTime = "2024-09-21T08:20:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#1003707006 "Paraffin block (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// HE-SCHNITTE (2 pro Block = 10 Slides)
// =============================================================================

Instance: NeoadjuvantTherapyResectionSpecimenSlide01A
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01A NAT Resektion"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_24_102_A_1_1HE"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_24_102"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenBlock01)
* collection.collectedDateTime = "2024-09-22T08:00:00+01:00"
* collection.method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+].description = "Schnittherstellung"
* processing[=].procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:00:00+01:00"
* processing[=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[=].extension[temperaturbedingungen].valueRange.low.value = 2
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+].description = "HE-Färbung"
* processing[=].procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:15:00+01:00"
* container.type = $sct#433466003 "Microscope slide (physical object)"
* container.additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: NeoadjuvantTherapyResectionSpecimenSlide01B
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01B NAT Resektion"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_24_102_A_1_2HE"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_24_102"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenBlock01)
* collection.collectedDateTime = "2024-09-22T08:05:00+01:00"
* collection.method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+].description = "Schnittherstellung"
* processing[=].procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:05:00+01:00"
* processing[=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[=].extension[temperaturbedingungen].valueRange.low.value = 2
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+].description = "HE-Färbung"
* processing[=].procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:20:00+01:00"
* container.type = $sct#433466003 "Microscope slide (physical object)"
* container.additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: NeoadjuvantTherapyResectionSpecimenSlide02A
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02A NAT Resektion"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_24_102_A_2_1HE"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_24_102"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenBlock02)
* collection.collectedDateTime = "2024-09-22T08:10:00+01:00"
* collection.method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+].description = "Schnittherstellung"
* processing[=].procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:10:00+01:00"
* processing[=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[=].extension[temperaturbedingungen].valueRange.low.value = 2
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+].description = "HE-Färbung"
* processing[=].procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:25:00+01:00"
* container.type = $sct#433466003 "Microscope slide (physical object)"
* container.additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: NeoadjuvantTherapyResectionSpecimenSlide02B
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02B NAT Resektion"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_24_102_A_2_2HE"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_24_102"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenBlock02)
* collection.collectedDateTime = "2024-09-22T08:15:00+01:00"
* collection.method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+].description = "Schnittherstellung"
* processing[=].procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:15:00+01:00"
* processing[=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[=].extension[temperaturbedingungen].valueRange.low.value = 2
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+].description = "HE-Färbung"
* processing[=].procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:30:00+01:00"
* container.type = $sct#433466003 "Microscope slide (physical object)"
* container.additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: NeoadjuvantTherapyResectionSpecimenSlide03A
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 03A NAT Resektion"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_24_102_A_3_1HE"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_24_102"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenBlock03)
* collection.collectedDateTime = "2024-09-22T08:20:00+01:00"
* collection.method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+].description = "Schnittherstellung"
* processing[=].procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:20:00+01:00"
* processing[=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[=].extension[temperaturbedingungen].valueRange.low.value = 2
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+].description = "HE-Färbung"
* processing[=].procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:35:00+01:00"
* container.type = $sct#433466003 "Microscope slide (physical object)"
* container.additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: NeoadjuvantTherapyResectionSpecimenSlide03B
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 03B NAT Resektion"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_24_102_A_3_2HE"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_24_102"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenBlock03)
* collection.collectedDateTime = "2024-09-22T08:25:00+01:00"
* collection.method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+].description = "Schnittherstellung"
* processing[=].procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:25:00+01:00"
* processing[=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[=].extension[temperaturbedingungen].valueRange.low.value = 2
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+].description = "HE-Färbung"
* processing[=].procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:40:00+01:00"
* container.type = $sct#433466003 "Microscope slide (physical object)"
* container.additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: NeoadjuvantTherapyResectionSpecimenSlide04A
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 04A NAT Resektion"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_24_102_A_4_1HE"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_24_102"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenBlock04)
* collection.collectedDateTime = "2024-09-22T08:30:00+01:00"
* collection.method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+].description = "Schnittherstellung"
* processing[=].procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:30:00+01:00"
* processing[=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[=].extension[temperaturbedingungen].valueRange.low.value = 2
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+].description = "HE-Färbung"
* processing[=].procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:45:00+01:00"
* container.type = $sct#433466003 "Microscope slide (physical object)"
* container.additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: NeoadjuvantTherapyResectionSpecimenSlide04B
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 04B NAT Resektion"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_24_102_A_4_2HE"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_24_102"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenBlock04)
* collection.collectedDateTime = "2024-09-22T08:35:00+01:00"
* collection.method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+].description = "Schnittherstellung"
* processing[=].procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:35:00+01:00"
* processing[=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[=].extension[temperaturbedingungen].valueRange.low.value = 2
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+].description = "HE-Färbung"
* processing[=].procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:50:00+01:00"
* container.type = $sct#433466003 "Microscope slide (physical object)"
* container.additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: NeoadjuvantTherapyResectionSpecimenSlide05A
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 05A NAT Resektion"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_24_102_A_5_1HE"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_24_102"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenBlock05)
* collection.collectedDateTime = "2024-09-22T08:40:00+01:00"
* collection.method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+].description = "Schnittherstellung"
* processing[=].procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:40:00+01:00"
* processing[=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[=].extension[temperaturbedingungen].valueRange.low.value = 2
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+].description = "HE-Färbung"
* processing[=].procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:55:00+01:00"
* container.type = $sct#433466003 "Microscope slide (physical object)"
* container.additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: NeoadjuvantTherapyResectionSpecimenSlide05B
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 05B NAT Resektion"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_24_102_A_5_2HE"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_24_102"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient2)
* parent = Reference(NeoadjuvantTherapyResectionSpecimenBlock05)
* collection.collectedDateTime = "2024-09-22T08:45:00+01:00"
* collection.method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+].description = "Schnittherstellung"
* processing[=].procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
* processing[=].timeDateTime = "2024-09-22T09:45:00+01:00"
* processing[=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[=].extension[temperaturbedingungen].valueRange.low.value = 2
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+].description = "HE-Färbung"
* processing[=].procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
* processing[=].timeDateTime = "2024-09-22T10:00:00+01:00"
* container.type = $sct#433466003 "Microscope slide (physical object)"
* container.additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"
