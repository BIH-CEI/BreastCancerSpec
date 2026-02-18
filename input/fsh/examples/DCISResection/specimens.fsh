// =============================================================================
// DCIS RESEKTION - HAUPTPRÄPARAT (PART)
// =============================================================================

Instance: DCISResectionSpecimenPart
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Wide Local Excision Präparat (Einsendespecimen)"
Description: "Wide Local Excision linke Mamma, oberer äußerer Quadrant"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://senologie.example-hospital.de/fhir/specimen/placer"
  * value = "BX24_103_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103_A"

* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103"

* status = #available
* type = $sct#127457009 "Tissue specimen from breast (specimen)"
* subject = Reference(Patient3)
* request = Reference(DCISResectionReportRequest)

* collection
  * collector = Reference(BreastSurgeonPractitioner)
  * collectedDateTime = "2024-06-10T09:30:00+01:00"
  * bodySite = $sct#76365002 "Structure of upper outer quadrant of breast (body structure)"
  * method = $sct#392021009 "Lumpectomy of breast (procedure)"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

// =============================================================================
// DCIS RESEKTION - PARAFFINBLOCK 01
// =============================================================================

Instance: DCISResectionSpecimenBlock01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 01 DCIS Resektion"
Description: "Paraffineinbettung des Wide Local Excision Präparats Block 01"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103_A_1"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient3)
* parent = Reference(DCISResectionSpecimenPart)
* collection
  * collectedDateTime = "2024-06-11T10:00:00+01:00"
  * method = $sct#787377000 "Gross examination and target selection of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin-fixed paraffin-embedded tissue specimen (procedure)"
  * timeDateTime = "2024-06-11T08:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#1003707006 "Paraffin block (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// DCIS RESEKTION - PARAFFINBLOCK 02
// =============================================================================

Instance: DCISResectionSpecimenBlock02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 02 DCIS Resektion"
Description: "Paraffineinbettung des Wide Local Excision Präparats Block 02"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103_A_2"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient3)
* parent = Reference(DCISResectionSpecimenPart)
* collection
  * collectedDateTime = "2024-06-11T10:05:00+01:00"
  * method = $sct#787377000 "Gross examination and target selection of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin-fixed paraffin-embedded tissue specimen (procedure)"
  * timeDateTime = "2024-06-11T08:05:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#1003707006 "Paraffin block (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// DCIS RESEKTION - PARAFFINBLOCK 03
// =============================================================================

Instance: DCISResectionSpecimenBlock03
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 03 DCIS Resektion"
Description: "Paraffineinbettung des Wide Local Excision Präparats Block 03"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103_A_3"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient3)
* parent = Reference(DCISResectionSpecimenPart)
* collection
  * collectedDateTime = "2024-06-11T10:10:00+01:00"
  * method = $sct#787377000 "Gross examination and target selection of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin-fixed paraffin-embedded tissue specimen (procedure)"
  * timeDateTime = "2024-06-11T08:10:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#1003707006 "Paraffin block (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// DCIS RESEKTION - PARAFFINBLOCK 04
// =============================================================================

Instance: DCISResectionSpecimenBlock04
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 04 DCIS Resektion"
Description: "Paraffineinbettung des Wide Local Excision Präparats Block 04"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103_A_4"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient3)
* parent = Reference(DCISResectionSpecimenPart)
* collection
  * collectedDateTime = "2024-06-11T10:15:00+01:00"
  * method = $sct#787377000 "Gross examination and target selection of tissue specimen (procedure)"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin-fixed paraffin-embedded tissue specimen (procedure)"
  * timeDateTime = "2024-06-11T08:15:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#1003707006 "Paraffin block (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// DCIS RESEKTION - HE-SCHNITT BLOCK 01
// =============================================================================

Instance: DCISResectionSpecimenSlide01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01 DCIS Resektion"
Description: "Hämatoxylin-Eosin gefärbter Schnitt 01 des Wide Local Excision Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103_A_1_1HE"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient3)
* parent = Reference(DCISResectionSpecimenBlock01)
* collection
  * collectedDateTime = "2024-06-12T08:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2024-06-12T09:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "HE-Färbung"
  * procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
  * timeDateTime = "2024-06-12T09:15:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// DCIS RESEKTION - HE-SCHNITT BLOCK 02
// =============================================================================

Instance: DCISResectionSpecimenSlide02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02 DCIS Resektion"
Description: "Hämatoxylin-Eosin gefärbter Schnitt 02 des Wide Local Excision Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103_A_2_1HE"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient3)
* parent = Reference(DCISResectionSpecimenBlock02)
* collection
  * collectedDateTime = "2024-06-12T08:05:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2024-06-12T09:05:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "HE-Färbung"
  * procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
  * timeDateTime = "2024-06-12T09:20:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// DCIS RESEKTION - HE-SCHNITT BLOCK 03
// =============================================================================

Instance: DCISResectionSpecimenSlide03
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 03 DCIS Resektion"
Description: "Hämatoxylin-Eosin gefärbter Schnitt 03 des Wide Local Excision Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103_A_3_1HE"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient3)
* parent = Reference(DCISResectionSpecimenBlock03)
* collection
  * collectedDateTime = "2024-06-12T08:10:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2024-06-12T09:10:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "HE-Färbung"
  * procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
  * timeDateTime = "2024-06-12T09:25:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// DCIS RESEKTION - HE-SCHNITT BLOCK 04
// =============================================================================

Instance: DCISResectionSpecimenSlide04
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 04 DCIS Resektion"
Description: "Hämatoxylin-Eosin gefärbter Schnitt 04 des Wide Local Excision Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103_A_4_1HE"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_103"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient3)
* parent = Reference(DCISResectionSpecimenBlock04)
* collection
  * collectedDateTime = "2024-06-12T08:15:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
  * timeDateTime = "2024-06-12T09:15:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "HE-Färbung"
  * procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
  * timeDateTime = "2024-06-12T09:30:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"
