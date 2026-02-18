// =============================================================================
// INVASIVES KARZINOM RESEKTION - HAUPTPRÄPARAT (PART)
// =============================================================================

Instance: InvasiveCarcinomaResectionSpecimenPart
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Lumpektomie-Präparat (Einsendespecimen)"
Description: "Lumpektomie-Präparat rechte Mamma, oberer äußerer Quadrant"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://senologie.example-hospital.de/fhir/specimen/placer"
  * value = "BX24_101_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101_A"

* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101"

* status = #available
* type = $sct#127457009 "Tissue specimen from breast (specimen)"
* subject = Reference(Patient1)
* request = Reference(InvasiveCarcinomaResectionReportRequest)

* collection
  * collector = Reference(BreastSurgeonPractitioner)
  * collectedDateTime = "2024-07-15T10:00:00+01:00"
  * bodySite = $sct#76365002 "Structure of upper outer quadrant of breast (body structure)"
  * method = $sct#392021009 "Lumpectomy of breast (procedure)"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

// =============================================================================
// INVASIVES KARZINOM RESEKTION - PARAFFINBLOCK 01
// =============================================================================

Instance: InvasiveCarcinomaResectionSpecimenBlock01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 01 Invasives Karzinom"
Description: "Paraffineinbettung des Lumpektomie-Präparats Block 01"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101_A_1"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient1)
* parent = Reference(InvasiveCarcinomaResectionSpecimenPart)
* collection
  * collectedDateTime = "2024-07-16T10:00:00+01:00"
  * method = $sct#787377000 "Gross examination and target selection of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin-fixed paraffin-embedded tissue specimen (procedure)"
  * timeDateTime = "2024-07-16T08:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#1003707006 "Paraffin block (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// INVASIVES KARZINOM RESEKTION - HE-SCHNITTE BLOCK 01
// =============================================================================

Instance: InvasiveCarcinomaResectionSpecimenSlide01A
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01A Invasives Karzinom"
Description: "Hämatoxylin-Eosin gefärbter Schnitt 01A des Lumpektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101_A_1_1HE"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient1)
* parent = Reference(InvasiveCarcinomaResectionSpecimenBlock01)
* collection
  * collectedDateTime = "2024-07-17T08:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2024-07-17T09:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "HE-Färbung"
  * procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
  * timeDateTime = "2024-07-17T09:15:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: InvasiveCarcinomaResectionSpecimenSlide01B
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01B Invasives Karzinom"
Description: "Hämatoxylin-Eosin gefärbter Schnitt 01B des Lumpektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101_A_1_2HE"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient1)
* parent = Reference(InvasiveCarcinomaResectionSpecimenBlock01)
* collection
  * collectedDateTime = "2024-07-17T08:05:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2024-07-17T09:05:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "HE-Färbung"
  * procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
  * timeDateTime = "2024-07-17T09:20:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// INVASIVES KARZINOM RESEKTION - PARAFFINBLOCK 02
// =============================================================================

Instance: InvasiveCarcinomaResectionSpecimenBlock02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 02 Invasives Karzinom"
Description: "Paraffineinbettung des Lumpektomie-Präparats Block 02"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101_A_2"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient1)
* parent = Reference(InvasiveCarcinomaResectionSpecimenPart)
* collection
  * collectedDateTime = "2024-07-16T10:05:00+01:00"
  * method = $sct#787377000 "Gross examination and target selection of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin-fixed paraffin-embedded tissue specimen (procedure)"
  * timeDateTime = "2024-07-16T08:05:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#1003707006 "Paraffin block (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

Instance: InvasiveCarcinomaResectionSpecimenSlide02A
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02A Invasives Karzinom"
Description: "Hämatoxylin-Eosin gefärbter Schnitt 02A des Lumpektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101_A_2_1HE"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient1)
* parent = Reference(InvasiveCarcinomaResectionSpecimenBlock02)
* collection
  * collectedDateTime = "2024-07-17T08:10:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2024-07-17T09:10:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "HE-Färbung"
  * procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
  * timeDateTime = "2024-07-17T09:25:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: InvasiveCarcinomaResectionSpecimenSlide02B
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02B Invasives Karzinom"
Description: "Hämatoxylin-Eosin gefärbter Schnitt 02B des Lumpektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101_A_2_2HE"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient1)
* parent = Reference(InvasiveCarcinomaResectionSpecimenBlock02)
* collection
  * collectedDateTime = "2024-07-17T08:15:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2024-07-17T09:15:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "HE-Färbung"
  * procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
  * timeDateTime = "2024-07-17T09:30:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// INVASIVES KARZINOM RESEKTION - PARAFFINBLOCK 03
// =============================================================================

Instance: InvasiveCarcinomaResectionSpecimenBlock03
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 03 Invasives Karzinom"
Description: "Paraffineinbettung des Lumpektomie-Präparats Block 03"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101_A_3"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient1)
* parent = Reference(InvasiveCarcinomaResectionSpecimenPart)
* collection
  * collectedDateTime = "2024-07-16T10:10:00+01:00"
  * method = $sct#787377000 "Gross examination and target selection of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin-fixed paraffin-embedded tissue specimen (procedure)"
  * timeDateTime = "2024-07-16T08:10:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#1003707006 "Paraffin block (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

Instance: InvasiveCarcinomaResectionSpecimenSlide03A
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 03A Invasives Karzinom"
Description: "Hämatoxylin-Eosin gefärbter Schnitt 03A des Lumpektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101_A_3_1HE"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient1)
* parent = Reference(InvasiveCarcinomaResectionSpecimenBlock03)
* collection
  * collectedDateTime = "2024-07-17T08:20:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2024-07-17T09:20:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "HE-Färbung"
  * procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
  * timeDateTime = "2024-07-17T09:35:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: InvasiveCarcinomaResectionSpecimenSlide03B
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 03B Invasives Karzinom"
Description: "Hämatoxylin-Eosin gefärbter Schnitt 03B des Lumpektomie-Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101_A_3_2HE"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_101"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient1)
* parent = Reference(InvasiveCarcinomaResectionSpecimenBlock03)
* collection
  * collectedDateTime = "2024-07-17T08:25:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2024-07-17T09:25:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "HE-Färbung"
  * procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
  * timeDateTime = "2024-07-17T09:40:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"
