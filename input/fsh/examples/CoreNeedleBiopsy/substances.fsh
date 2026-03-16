Alias: $mii-biobank-substance = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance

// =============================================================================
// STANZBIOPSIE - SUBSTANCE: ER-IHC Reagenz
// =============================================================================

Instance: CoreNeedleBiopsySubstanceER
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "ER-IHC Reagenz Stanzbiopsie"
Description: "Östrogenrezeptor-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "Estrogen Receptor (Dako Omnis)"

// =============================================================================
// STANZBIOPSIE - SUBSTANCE: PR-IHC Reagenz
// =============================================================================

Instance: CoreNeedleBiopsySubstancePR
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "PR-IHC Reagenz Stanzbiopsie"
Description: "Progesteronrezeptor-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "Progesterone Receptor (Dako Omnis)"

// =============================================================================
// STANZBIOPSIE - SUBSTANCE: HER2-B-DISH Reagenz
// =============================================================================

Instance: CoreNeedleBiopsySubstanceHER2ISH
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "HER2-B-DISH Reagenz Stanzbiopsie"
Description: "HER2 Dual ISH Sonden-Kit"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "VENTANA HER2 Dual ISH, Roche"

// =============================================================================
// STANZBIOPSIE - SUBSTANCE: HER2-IHC Reagenz
// =============================================================================

Instance: CoreNeedleBiopsySubstanceHER2IHC
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "HER2-IHC Reagenz Stanzbiopsie"
Description: "HER2-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "VENTANA HER2 (4B5), Roche"

// =============================================================================
// STANZBIOPSIE - SUBSTANCE: Ki-67-IHC Reagenz
// =============================================================================

Instance: CoreNeedleBiopsySubstanceKi67
InstanceOf: $mii-biobank-substance
Usage: #example
Title: "Ki-67-IHC Reagenz Stanzbiopsie"
Description: "Ki-67-Antikörper für Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"
* code = $sct#45389009 "Tissue stain (substance)"
* description = "Ki-67 Antigen (Dako Omnis)"
