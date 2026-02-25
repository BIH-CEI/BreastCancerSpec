// Diagnose Mammakarzinom nach Stanzbiopsie
Instance: CoreNeedleBiopsyDiagnosisPreOp
InstanceOf: $mii-diagnose
Usage: #example
Title: "Mammakarzinom-Diagnose Stanzbiopsie"
Description: "Diagnose eines Herdbefunds der linken Brust, BI-RADS 4b, Indikation zur Stanzbiopsie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2026.0.0"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#encounter-diagnosis
* code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].version = "2025"
* code.coding[icd10-gm].code = #C50.5
* code.coding[icd10-gm].display = "Bösartige Neubildung: Unterer äußerer Quadrant der Brustdrüse"
* subject = Reference(Patient4)
* encounter = Reference(CoreNeedleBiopsyEncounter)
* onsetDateTime = "2025-01-10"
* recordedDate = "2025-01-10"
* note.text = "Herdbefund/Architekturstörung linke Brust, BI-RADS 4b. Indikation zur US-gestützten Stanzbiopsie."
