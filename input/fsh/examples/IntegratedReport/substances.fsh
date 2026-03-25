Alias: $mii-biobank-substance = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance

// =============================================================================
// INTEGRIERTER BERICHT - SUBSTANCE: ER-IHC Reagenz
// =============================================================================

Instance: IntegratedSubstanceER
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "ER-IHC Reagenz (integriert)"
Description: "Östrogenrezeptor-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "Estrogen Receptor (Dako Omnis)"

// =============================================================================
// INTEGRIERTER BERICHT - SUBSTANCE: PR-IHC Reagenz
// =============================================================================

Instance: IntegratedSubstancePR
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "PR-IHC Reagenz (integriert)"
Description: "Progesteronrezeptor-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "Progesterone Receptor (Dako Omnis)"

// =============================================================================
// INTEGRIERTER BERICHT - SUBSTANCE: HER2-IHC Reagenz
// =============================================================================

Instance: IntegratedSubstanceHER2IHC
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "HER2-IHC Reagenz (integriert)"
Description: "HER2-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "VENTANA HER2 (4B5), Roche"

// =============================================================================
// INTEGRIERTER BERICHT - SUBSTANCE: Ki-67-IHC Reagenz
// =============================================================================

Instance: IntegratedSubstanceKi67
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "Ki-67-IHC Reagenz (integriert)"
Description: "Ki-67-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "Ki-67 Antigen (Dako Omnis)"

// =============================================================================
// INTEGRIERTER BERICHT - SUBSTANCE: CK-18-IHC Reagenz
// =============================================================================

Instance: IntegratedSubstanceCK18
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "CK-18-IHC Reagenz (integriert)"
Description: "Zytokeratin 18 Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "Cytokeratin 18 (DC10), Dako Omnis"

// =============================================================================
// INTEGRIERTER BERICHT - SUBSTANCE: p40-IHC Reagenz
// =============================================================================

Instance: IntegratedSubstancep40
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "p40-IHC Reagenz (integriert)"
Description: "p40-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "p40 (BC28), Biocare Medical"

// =============================================================================
// INTEGRIERTER BERICHT - SUBSTANCE: E-Cadherin-IHC Reagenz
// =============================================================================

Instance: IntegratedSubstanceECadherin
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "E-Cadherin-IHC Reagenz (integriert)"
Description: "E-Cadherin-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "E-Cadherin (NCH-38), Dako Omnis"
