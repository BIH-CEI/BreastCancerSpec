// Bestätigte Diagnose Mammakarzinom — Indikation zur SLN-Biopsie
Instance: LymphNodeDiagnosisConfirmed
InstanceOf: $mii-diagnose
Usage: #example
Title: "Mammakarzinom-Diagnose (SLN-Indikation)"
Description: "Bestätigte Diagnose eines invasiven Mammakarzinoms, Indikation zur Sentinel-Lymphknoten-Biopsie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2026.0.0"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#encounter-diagnosis
* code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].version = "2025"
* code.coding[icd10-gm].code = #C50.5
* code.coding[icd10-gm].display = "Bösartige Neubildung: Unterer äußerer Quadrant der Brustdrüse"
* subject = Reference(Patient4)
* encounter = Reference(LymphNodeEncounter)
* onsetDateTime = "2025-01-15"
* recordedDate = "2025-02-05"
* note.text = "Invasives Mammakarzinom NST links, G2. SLN-Biopsie indiziert bei klinisch unauffälliger Axilla (cN0)."
