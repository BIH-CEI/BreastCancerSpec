// Diagnose für Lymphknoten-Untersuchung (gleiche Grunddiagnose wie Invasives Karzinom)
Instance: LymphNodeSpecimensDiagnosis
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
Title: "Diagnose für Lymphknoten-Untersuchung"
Description: "Diagnose des invasiven Mammakarzinoms als Grundlage der Sentinel-LK-Biopsie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2026.0.0"
* extension[Feststellungsdatum].valueDateTime = "2024-06-15"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#encounter-diagnosis
* code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].version = "2024"
* code.coding[icd10-gm].code = #C50.4
* code.coding[icd10-gm].display = "Bösartige Neubildung: Oberer äußerer Quadrant der Brustdrüse"
* subject = Reference(Patient1)
* encounter = Reference(LymphNodeSpecimensEncounter)
* onsetDateTime = "2024-06-15"
* recordedDate = "2024-06-15"
* note.text = "Invasives Mammakarzinom NST im oberen äußeren Quadranten rechts, pT1c. Sentinel-Lymphknoten-Biopsie zur axillären Stadienbestimmung."
