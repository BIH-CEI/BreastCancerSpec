// Primärdiagnose DCIS der Brustdrüse
Instance: DCISResectionDiagnosis
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
Title: "DCIS-Diagnose"
Description: "Diagnose eines duktalen Carcinoma in situ der Brustdrüse"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2026.0.0"
* extension[Feststellungsdatum].valueDateTime = "2024-05-15"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#encounter-diagnosis
* code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].version = "2024"
* code.coding[icd10-gm].code = #D05.1
* code.coding[icd10-gm].display = "Intraduktales Carcinoma in situ der Brustdrüse"
* subject = Reference(Patient3)
* encounter = Reference(DCISResectionEncounter)
* onsetDateTime = "2024-05-15"
* recordedDate = "2024-05-15"
* note.text = "DCIS high-grade, Comedo-Typ, mammografisch detektiert über Mikrokalzifikationen. Vakuumbiopsie-gesichert. Indikation zur Wide Local Excision."
