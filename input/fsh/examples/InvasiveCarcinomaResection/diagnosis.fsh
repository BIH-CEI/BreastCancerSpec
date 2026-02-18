// Primärdiagnose Mammakarzinom vor Lumpektomie
Instance: InvasiveCarcinomaResectionDiagnosisPreOp
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
Title: "Mammakarzinom-Diagnose vor Lumpektomie"
Description: "Gesicherte Diagnose eines invasiven Mammakarzinoms nach Stanzbiopsie, Indikation zur brusterhaltenden Therapie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2026.0.0"
* extension[Feststellungsdatum].valueDateTime = "2024-06-20"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#encounter-diagnosis
* code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].version = "2024"
* code.coding[icd10-gm].code = #C50.4
* code.coding[icd10-gm].display = "Bösartige Neubildung: Oberer äußerer Quadrant der Brustdrüse"
* subject = Reference(Patient1)
* encounter = Reference(InvasiveCarcinomaResectionEncounter)
* onsetDateTime = "2024-06-20"
* recordedDate = "2024-06-20"
* note.text = "Invasives Mammakarzinom NST, Stanzbiopsie-gesichert. ER+, PR+, HER2-, Ki-67 15%. Klinisches Stadium cT1c cN0 cM0. Luminal A-like. Indikation zur brusterhaltenden Therapie mit Sentinel-Lymphknoten-Biopsie."
