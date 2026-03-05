// =============================================================================
// BET-EXZISIONSPRÄPARAT - HAUPTPRÄPARAT (PART)
// =============================================================================

Instance: BreastResectionSpecimenPart
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "BET-Exzisionspräparat (Einsendespecimen)"
Description: "BET-Exzisionspräparat Mamma links, mit Haut, Drahthäkchen, 65x45x30mm, 55g"
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

* note.text = "BET-Exzisionspräparat Mamma links, unterer äußerer Quadrant, 5 Uhr, 50 mm von Mamille. Mit Haut, Drahthäkchen in situ. 65 x 45 x 30 mm, 55 g. Schnittfläche: grau-weißlich, derber Herdbefund zentral, ca. 18 mm."

// =============================================================================
// BET - PARAFFINBLOCK 01 (Tumor, zentral)
// =============================================================================

Instance: BreastResectionSpecimenBlock01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 01 BET - Tumor zentral"
Description: "Paraffineinbettung des zentralen Tumorareals"
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
  * description = "Zuschnitt und Paraffineinbettung - Tumorareal zentral"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-02-06T08:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// BET - PARAFFINBLOCK 02 (DCIS-Areal / Tumorperipherie)
// =============================================================================

Instance: BreastResectionSpecimenBlock02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 02 BET - DCIS / Tumorperipherie"
Description: "Paraffineinbettung des DCIS-Areals und der Tumorperipherie"
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
  * description = "Zuschnitt und Paraffineinbettung - DCIS/Tumorperipherie"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-02-06T08:10:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// BET - PARAFFINBLOCK 03 (Resektionsränder)
// =============================================================================

Instance: BreastResectionSpecimenBlock03
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 03 BET - Resektionsränder"
Description: "Paraffineinbettung der Resektionsränder"
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
  * description = "Zuschnitt und Paraffineinbettung - Resektionsränder"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
  * timeDateTime = "2025-02-06T08:20:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// =============================================================================
// BET - HE-SCHNITT 01 TUMOR (Schnittstufe 1, Block01)
// =============================================================================

Instance: BreastResectionSpecimenSlideHE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01 BET - Tumor"
Description: "HE-gefärbter Schnitt des Tumorareals, Schnittstufe 1"
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

Instance: BreastResectionSpecimenSlideHE02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02 BET - Tumor"
Description: "HE-gefärbter Schnitt des Tumorareals, Schnittstufe 2"
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

Instance: BreastResectionSpecimenSlideHE03
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 03 BET - Tumor"
Description: "HE-gefärbter Schnitt des Tumorareals, Schnittstufe 3"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_HE_03"
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
  * description = "Schnittherstellung (Schnittstufe 3)"
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

Instance: BreastResectionSpecimenSlideHE04
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 04 BET - Tumor"
Description: "HE-gefärbter Schnitt des Tumorareals, Schnittstufe 4"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_HE_04"
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
  * description = "Schnittherstellung (Schnittstufe 4)"
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
// BET - ER-IHC SCHNITTE (Block01)
// =============================================================================

Instance: BreastResectionSpecimenSlideER01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "ER-IHC Schnitt 01 BET"
Description: "Schnitt 1 für Östrogenrezeptor-Immunhistochemie"
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
  * procedure = $sct#70871006 "Incisional biopsy (procedure)"
  * timeDateTime = "2025-02-06T10:00:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: BreastResectionSpecimenSlideER02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "ER-IHC Schnitt 02 BET"
Description: "Schnitt 2 für Östrogenrezeptor-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_ER_02"
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
  * procedure = $sct#70871006 "Incisional biopsy (procedure)"
  * timeDateTime = "2025-02-06T10:00:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BET - PR-IHC SCHNITTE (Block01)
// =============================================================================

Instance: BreastResectionSpecimenSlidePR01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "PR-IHC Schnitt 01 BET"
Description: "Schnitt 1 für Progesteronrezeptor-Immunhistochemie"
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
  * procedure = $sct#70871006 "Incisional biopsy (procedure)"
  * timeDateTime = "2025-02-06T10:05:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: BreastResectionSpecimenSlidePR02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "PR-IHC Schnitt 02 BET"
Description: "Schnitt 2 für Progesteronrezeptor-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_PR_02"
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
  * procedure = $sct#70871006 "Incisional biopsy (procedure)"
  * timeDateTime = "2025-02-06T10:05:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BET - HER2-B-DISH SCHNITTE (Block01)
// =============================================================================

Instance: BreastResectionSpecimenSlideHER2-01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HER2-B-DISH Schnitt 01 BET"
Description: "Schnitt 1 für HER2 Bright-field Dual In-Situ Hybridization"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_HER2_01"
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
  * description = "HER2 Bright-field Dual In-Situ Hybridization (B-DISH)"
  * procedure = $sct#426329006 "Fluorescence in situ hybridization (procedure)"
  * timeDateTime = "2025-02-06T10:30:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: BreastResectionSpecimenSlideHER2-02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HER2-B-DISH Schnitt 02 BET"
Description: "Schnitt 2 für HER2 Bright-field Dual In-Situ Hybridization"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_HER2_02"
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
  * description = "HER2 Bright-field Dual In-Situ Hybridization (B-DISH)"
  * procedure = $sct#426329006 "Fluorescence in situ hybridization (procedure)"
  * timeDateTime = "2025-02-06T10:30:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BET - Ki67-IHC SCHNITTE (Block01)
// =============================================================================

Instance: BreastResectionSpecimenSlideKi67-01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Ki67-IHC Schnitt 01 BET"
Description: "Schnitt 1 für Ki-67 Immunhistochemie"
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
  * procedure = $sct#70871006 "Incisional biopsy (procedure)"
  * timeDateTime = "2025-02-06T10:10:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

Instance: BreastResectionSpecimenSlideKi67-02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Ki67-IHC Schnitt 02 BET"
Description: "Schnitt 2 für Ki-67 Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_1_1_Ki67_02"
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
  * procedure = $sct#70871006 "Incisional biopsy (procedure)"
  * timeDateTime = "2025-02-06T10:10:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// BET - HE-SCHNITTE DCIS (Block02)
// =============================================================================

Instance: BreastResectionSpecimenSlideDCIS-HE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01 BET - DCIS"
Description: "HE-gefärbter Schnitt des DCIS-Areals, Schnittstufe 1"
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

Instance: BreastResectionSpecimenSlideDCIS-HE02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02 BET - DCIS"
Description: "HE-gefärbter Schnitt des DCIS-Areals, Schnittstufe 2"
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
// BET - HE-SCHNITTE RESEKTIONSRÄNDER (Block03)
// =============================================================================

Instance: BreastResectionSpecimenSlideMargins-HE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01 BET - Resektionsränder"
Description: "HE-gefärbter Schnitt der Resektionsränder, Schnittstufe 1"
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
  * description = "Schnittherstellung (Schnittstufe 1)"
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

Instance: BreastResectionSpecimenSlideMargins-HE02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02 BET - Resektionsränder"
Description: "HE-gefärbter Schnitt der Resektionsränder, Schnittstufe 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_3_1_HE_02"
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
  * description = "Schnittherstellung (Schnittstufe 2)"
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

Instance: BreastResectionSpecimenSlideMargins-HE03
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 03 BET - Resektionsränder"
Description: "HE-gefärbter Schnitt der Resektionsränder, Schnittstufe 3"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_3_1_HE_03"
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
  * description = "Schnittherstellung (Schnittstufe 3)"
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

Instance: BreastResectionSpecimenSlideMargins-HE04
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 04 BET - Resektionsränder"
Description: "HE-gefärbter Schnitt der Resektionsränder, Schnittstufe 4"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_3_1_HE_04"
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
  * description = "Schnittherstellung (Schnittstufe 4)"
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

Instance: BreastResectionSpecimenSlideMargins-HE05
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 05 BET - Resektionsränder"
Description: "HE-gefärbter Schnitt der Resektionsränder, Schnittstufe 5"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_3_1_HE_05"
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
  * description = "Schnittherstellung (Schnittstufe 5)"
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

Instance: BreastResectionSpecimenSlideMargins-HE06
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 06 BET - Resektionsränder"
Description: "HE-gefärbter Schnitt der Resektionsränder, Schnittstufe 6"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A_3_1_HE_06"
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
  * description = "Schnittherstellung (Schnittstufe 6)"
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
