# Pathologiebericht BET Mamma - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pathologiebericht BET Mamma**

## Example DiagnosticReport: Pathologiebericht BET Mamma

Profile: [MII PR Patho Reportversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report)

## Pathology Synoptic report (Surgical Pathology) 

| | |
| :--- | :--- |
| Subject | Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105) |
| When For | 2025-02-10 14:00:00+0100 |
| Reported | 2025-02-10 17:00:00+0100 |
| Performer | [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md) |
| Identifier | Accession ID/E_25_210 |

**Report Details**

* **Code**: [Pathology report gross observation Narrative](Observation-BreastResectionMacroscopicGrouper.md)(Breast structure (body structure))
  * **Value**: 
  * **Flags**: Final
  * **When For**: 2025-02-06 08:30:00+0100
* **Code**: [Pathology report final diagnosis Narrative](Observation-BreastResectionDiagnosticConclusionGrouper.md)
  * **Value**: 
  * **Flags**: Final
  * **When For**: 2025-02-10

Invasives Mammakarzinom NST (ICD-O 8500/3), pT1c, Nottingham Grad 2 (Score 6: Tubuli 3, Kernpleomorphie 2, Mitosen 1). Begleitendes DCIS, intermediärer Kerngrad, kribriform, fokale Komedo-Nekrosen. Alle Resektionsränder tumorfrei (invasiv 5 mm, DCIS 3 mm). Keine LVI. ER+ (90%), PR+ (60%), HER2 1+ (nicht amplifiziert), Ki-67 15%.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "BreastResectionReport",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report|2026.0.0"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ACSN",
        "display" : "Accession ID"
      }]
    },
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_210"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/BreastResectionReportRequest"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "SP",
      "display" : "Surgical Pathology"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "60568-3",
      "display" : "Pathology Synoptic report"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-02-10T14:00:00+01:00",
  "issued" : "2025-02-10T17:00:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "specimen" : [{
    "reference" : "Specimen/BreastResectionSpecimenPart"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenBlock01"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenBlock02"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenBlock03"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenBlock04"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenBlock05"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenBlock06"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlideHE01"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlideHE02"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlideER01"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlidePR01"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlideHER2IHC01"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlideKi67-01"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlideCK18-01"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlidep40-01"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlideECad-01"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlideBlock02-HE01"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlideBlock02-HE02"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlideRR-Superior-HE01"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlideRR-Inferior-HE01"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlideRR-Medial-HE01"
  },
  {
    "reference" : "Specimen/BreastResectionSpecimenSlideRR-Lateral-HE01"
  }],
  "result" : [{
    "reference" : "Observation/BreastResectionMacroscopicGrouper"
  },
  {
    "reference" : "Observation/BreastResectionDiagnosticConclusionGrouper"
  }],
  "conclusion" : "Invasives Mammakarzinom NST (ICD-O 8500/3), pT1c, Nottingham Grad 2 (Score 6: Tubuli 3, Kernpleomorphie 2, Mitosen 1). Begleitendes DCIS, intermediärer Kerngrad, kribriform, fokale Komedo-Nekrosen. Alle Resektionsränder tumorfrei (invasiv 5 mm, DCIS 3 mm). Keine LVI. ER+ (90%), PR+ (60%), HER2 1+ (nicht amplifiziert), Ki-67 15%."
}

```
