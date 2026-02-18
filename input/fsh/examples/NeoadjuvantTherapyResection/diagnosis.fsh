// Primärdiagnose TNBC vor neoadjuvanter Therapie
Instance: NeoadjuvantTherapyResectionDiagnosisPreOp
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
Title: "TNBC-Diagnose vor neoadjuvanter Therapie"
Description: "Diagnose eines triple-negativen Mammakarzinoms vor neoadjuvanter Chemotherapie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2026.0.0"
* extension[Feststellungsdatum].valueDateTime = "2024-05-10"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#encounter-diagnosis
* code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].version = "2024"
* code.coding[icd10-gm].code = #C50.9
* code.coding[icd10-gm].display = "Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet"
* subject = Reference(Patient2)
* encounter = Reference(NeoadjuvantTherapyResectionEncounter)
* onsetDateTime = "2024-05-10"
* recordedDate = "2024-05-10"
* note.text = "Triple-negatives Mammakarzinom (ER-, PR-, HER2-), Stanzbiopsie-gesichert. cT2 cN1 cM0. Indikation zur neoadjuvanten Chemotherapie mit anschließender Mastektomie."
