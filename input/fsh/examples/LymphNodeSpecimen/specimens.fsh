// =============================================================================
// SENTINEL-LYMPHKNOTEN-EXZISAT - HAUPTPRÄPARAT (PART)
// =============================================================================

Instance: LymphNodeSpecimenPart
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "SLN-Exzisat (Einsendespecimen)"
Description: "Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert, Patentblau-markiert"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://senologie.example-hospital.de/fhir/specimen/placer"
  * value = "OP25_211_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_211_A"

* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_211"

* status = #available
* type = $sct#258589002 "Lymph node specimen (specimen)"
* subject = Reference(Patient4)
* request = Reference(LymphNodeReportRequest)

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
// SLN #1 - PARAFFINBLOCK 01 (halbiert, enthält Mikrometastase)
// =============================================================================

Instance: LymphNodeSpecimenBlock01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 01 SLN #1"
Description: "Paraffineinbettung SLN #1, halbiert, enthält Mikrometastase"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_211_A_1"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_211"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(LymphNodeSpecimenPart)
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
// SLN #2 - PARAFFINBLOCK 02 (halbiert, tumorfrei)
// =============================================================================

Instance: LymphNodeSpecimenBlock02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock 02 SLN #2"
Description: "Paraffineinbettung SLN #2, halbiert, tumorfrei"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_211_A_2"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_211"
* status = #available
* type = $sct#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient4)
* parent = Reference(LymphNodeSpecimenPart)
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

Instance: LymphNodeSpecimenSlideHE01
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 01 SLN #1 (Schnittstufe 1)"
Description: "HE-gefärbter Schnitt des SLN #1, Schnittstufe 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_211_A_1_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_211"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(LymphNodeSpecimenBlock01)
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

Instance: LymphNodeSpecimenSlideHE02
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 02 SLN #1 (Schnittstufe 2)"
Description: "HE-gefärbter Schnitt des SLN #1, Schnittstufe 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_211_A_1_1_HE_02"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_211"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(LymphNodeSpecimenBlock01)
* collection
  * collectedDateTime = "2025-02-06T09:05:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung (Schnittstufe 2)"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:05:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-02-06T09:20:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// SLN #2 - HE-SCHNITT 03 (Schnittstufe 1)
// =============================================================================

Instance: LymphNodeSpecimenSlideHE03
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 03 SLN #2 (Schnittstufe 1)"
Description: "HE-gefärbter Schnitt des SLN #2, Schnittstufe 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_211_A_2_1_HE_01"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_211"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(LymphNodeSpecimenBlock02)
* collection
  * collectedDateTime = "2025-02-06T09:10:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung (Schnittstufe 1)"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:10:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-02-06T09:25:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// SLN #2 - HE-SCHNITT 04 (Schnittstufe 2)
// =============================================================================

Instance: LymphNodeSpecimenSlideHE04
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt 04 SLN #2 (Schnittstufe 2)"
Description: "HE-gefärbter Schnitt des SLN #2, Schnittstufe 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"
* identifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_211_A_2_1_HE_02"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_211"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(Patient4)
* parent = Reference(LymphNodeSpecimenBlock02)
* collection
  * collectedDateTime = "2025-02-06T09:15:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "Schnittherstellung (Schnittstufe 2)"
  * procedure = $sct#434472006 "Sectioning of tissue block (procedure)"
  * timeDateTime = "2025-02-06T09:15:00+01:00"
* processing[+]
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 20
  * extension[temperaturbedingungen].valueRange.high.value = 25
  * description = "HE-Färbung"
  * procedure = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
  * timeDateTime = "2025-02-06T09:30:00+01:00"
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"
