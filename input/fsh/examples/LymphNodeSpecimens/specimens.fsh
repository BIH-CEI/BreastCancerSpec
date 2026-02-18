// =============================================================================
// LYMPH NODE SPECIMENS - 2 SENTINEL-LYMPHKNOTEN (2 Parts + 2 Blocks + 4 Slides)
// =============================================================================

// =============================================================================
// SENTINEL-LYMPHKNOTEN 1 (PART)
// =============================================================================

Instance: LymphNodeSpecimensSpecimenPartSLN1
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Sentinel-Lymphknoten 1 (Einsendespecimen)"
Description: "Sentinel-Lymphknoten 1 aus der rechten Axilla"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://senologie.example-hospital.de/fhir/specimen/placer"
  * value = "BX24_104_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_104_A"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_104"
* status = #available
* type = $sct#309079007 "Lymph node biopsy specimen (specimen)"
* subject = Reference(Patient1)
* request = Reference(LymphNodeSpecimensReportRequest)
* collection
  * collector = Reference(BreastSurgeonPractitioner)
  * collectedDateTime = "2024-07-15T10:00:00+01:00"
  * bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"
  * method = $sct#396487001 "Sentinel lymph node biopsy (procedure)"
* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"
* note.text = "Sentinel-Lymphknoten 1, markiert mit Patentblau und Tc-99m"

// =============================================================================
// SENTINEL-LYMPHKNOTEN 2 (PART)
// =============================================================================

Instance: LymphNodeSpecimensSpecimenPartSLN2
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Sentinel-Lymphknoten 2 (Einsendespecimen)"
Description: "Sentinel-Lymphknoten 2 aus der rechten Axilla"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://senologie.example-hospital.de/fhir/specimen/placer"
  * value = "BX24_104_B"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_104_B"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_104"
* status = #available
* type = $sct#309079007 "Lymph node biopsy specimen (specimen)"
* subject = Reference(Patient1)
* request = Reference(LymphNodeSpecimensReportRequest)
* collection
  * collector = Reference(BreastSurgeonPractitioner)
  * collectedDateTime = "2024-07-15T10:05:00+01:00"
  * bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"
  * method = $sct#396487001 "Sentinel lymph node biopsy (procedure)"
* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"
* note.text = "Sentinel-Lymphknoten 2, markiert mit Patentblau"

// =============================================================================
// PARAFFINBLÖCKE (1 pro SLN = 2 Blocks)
// =============================================================================

Instance: LymphNodeSpecimensSpecimenBlock01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 01 Lymphknoten - SLN1"
Description: "Paraffineinbettung Sentinel-Lymphknoten 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_104_A_1"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_104"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient1)
* parent = Reference(LymphNodeSpecimensSpecimenPartSLN1)
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

Instance: LymphNodeSpecimensSpecimenBlock02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 02 Lymphknoten - SLN2"
Description: "Paraffineinbettung Sentinel-Lymphknoten 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_104_B_1"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_24_104"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient1)
* parent = Reference(LymphNodeSpecimensSpecimenPartSLN2)
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

// =============================================================================
// HE-SCHNITTE (1 HE pro Block = 2 HE-Slides)
// =============================================================================

Instance: LymphNodeSpecimensSpecimenSlide01HE
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt SLN1 Lymphknoten"
Description: "HE-gefärbter Schnitt von Sentinel-Lymphknoten 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_24_104_A_1_1HE"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_24_104"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient1)
* parent = Reference(LymphNodeSpecimensSpecimenBlock01)
* collection.collectedDateTime = "2024-07-16T11:00:00+01:00"
* collection.method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+].description = "Schnittherstellung"
* processing[=].procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
* processing[=].timeDateTime = "2024-07-16T12:00:00+01:00"
* processing[=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[=].extension[temperaturbedingungen].valueRange.low.value = 2
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+].description = "HE-Färbung"
* processing[=].procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
* processing[=].timeDateTime = "2024-07-16T12:15:00+01:00"
* container.type = $sct#433466003 "Microscope slide (physical object)"
* container.additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: LymphNodeSpecimensSpecimenSlide02HE
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt SLN2 Lymphknoten"
Description: "HE-gefärbter Schnitt von Sentinel-Lymphknoten 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_24_104_B_1_1HE"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_24_104"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient1)
* parent = Reference(LymphNodeSpecimensSpecimenBlock02)
* collection.collectedDateTime = "2024-07-16T11:05:00+01:00"
* collection.method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+].description = "Schnittherstellung"
* processing[=].procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
* processing[=].timeDateTime = "2024-07-16T12:05:00+01:00"
* processing[=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[=].extension[temperaturbedingungen].valueRange.low.value = 2
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+].description = "HE-Färbung"
* processing[=].procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
* processing[=].timeDateTime = "2024-07-16T12:20:00+01:00"
* container.type = $sct#433466003 "Microscope slide (physical object)"
* container.additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// IHC-SCHNITTE (Cytokeratin, 1 pro Block = 2 IHC-Slides)
// =============================================================================

Instance: LymphNodeSpecimensSpecimenSlide01IHC
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "IHC-Schnitt (CK) SLN1 Lymphknoten"
Description: "Cytokeratin-Immunhistochemie Schnitt von Sentinel-Lymphknoten 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_24_104_A_1_1IHC"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_24_104"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient1)
* parent = Reference(LymphNodeSpecimensSpecimenBlock01)
* collection.collectedDateTime = "2024-07-16T11:10:00+01:00"
* collection.method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+].description = "Schnittherstellung"
* processing[=].procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
* processing[=].timeDateTime = "2024-07-16T12:10:00+01:00"
* processing[=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[=].extension[temperaturbedingungen].valueRange.low.value = 2
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+].description = "Immunhistochemie (Panzytokeratin AE1/AE3)"
* processing[=].procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
* processing[=].timeDateTime = "2024-07-16T13:00:00+01:00"
* container.type = $sct#433466003 "Microscope slide (physical object)"
* container.additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"
* note.text = "Panzytokeratin AE1/AE3 Immunhistochemie zur Detektion isolierter Tumorzellen"

Instance: LymphNodeSpecimensSpecimenSlide02IHC
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "IHC-Schnitt (CK) SLN2 Lymphknoten"
Description: "Cytokeratin-Immunhistochemie Schnitt von Sentinel-Lymphknoten 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_24_104_B_1_1IHC"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_24_104"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient1)
* parent = Reference(LymphNodeSpecimensSpecimenBlock02)
* collection.collectedDateTime = "2024-07-16T11:15:00+01:00"
* collection.method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+].description = "Schnittherstellung"
* processing[=].procedure = $sct#434472006 "Sectioning of tissue specimen (procedure)"
* processing[=].timeDateTime = "2024-07-16T12:15:00+01:00"
* processing[=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[=].extension[temperaturbedingungen].valueRange.low.value = 2
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+].description = "Immunhistochemie (Panzytokeratin AE1/AE3)"
* processing[=].procedure = $sct#127790008 "Hematoxylin and eosin staining method (procedure)"
* processing[=].timeDateTime = "2024-07-16T13:05:00+01:00"
* container.type = $sct#433466003 "Microscope slide (physical object)"
* container.additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"
* note.text = "Panzytokeratin AE1/AE3 Immunhistochemie zur Detektion isolierter Tumorzellen"
