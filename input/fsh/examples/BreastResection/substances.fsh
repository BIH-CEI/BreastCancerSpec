Alias: $mii-biobank-substance = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance

// =============================================================================
// BET - SUBSTANCE: ER-IHC Reagenz
// =============================================================================

Instance: BreastResectionSubstanceER
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "ER-IHC Reagenz BET"
Description: "Östrogenrezeptor-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "Estrogen Receptor (Dako Omnis)"

// =============================================================================
// BET - SUBSTANCE: PR-IHC Reagenz
// =============================================================================

Instance: BreastResectionSubstancePR
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "PR-IHC Reagenz BET"
Description: "Progesteronrezeptor-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "Progesterone Receptor (Dako Omnis)"

// =============================================================================
// BET - SUBSTANCE: HER2-IHC Reagenz
// =============================================================================

Instance: BreastResectionSubstanceHER2IHC
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "HER2-IHC Reagenz BET"
Description: "HER2-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "VENTANA HER2 (4B5), Roche"

// =============================================================================
// BET - SUBSTANCE: Ki-67-IHC Reagenz
// =============================================================================

Instance: BreastResectionSubstanceKi67
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "Ki-67-IHC Reagenz BET"
Description: "Ki-67-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "Ki-67 Antigen (Dako Omnis)"

// =============================================================================
// BET - SUBSTANCE: CK-18-IHC Reagenz
// =============================================================================

Instance: BreastResectionSubstanceCK18
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "CK-18-IHC Reagenz BET"
Description: "Zytokeratin 18 Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "Cytokeratin 18 (DC10), Dako Omnis"

// =============================================================================
// BET - SUBSTANCE: p40-IHC Reagenz
// =============================================================================

Instance: BreastResectionSubstancep40
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "p40-IHC Reagenz BET"
Description: "p40-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "p40 (BC28), Biocare Medical"

// =============================================================================
// BET - SUBSTANCE: E-Cadherin-IHC Reagenz
// =============================================================================

Instance: BreastResectionSubstanceECadherin
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "E-Cadherin-IHC Reagenz BET"
Description: "E-Cadherin-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "E-Cadherin (NCH-38), Dako Omnis"
