# Pathologiebericht BET + SLN (integriert) - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pathologiebericht BET + SLN (integriert)**

## Example DiagnosticReport: Pathologiebericht BET + SLN (integriert)

Profile: [MII PR Patho Reportversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report)

## Pathology Synoptic report (Surgical Pathology) 

| | |
| :--- | :--- |
| Subject | Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105) |
| When For | 2025-02-10 14:00:00+0100 |
| Reported | 2025-02-10 17:00:00+0100 |
| Performer | [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md) |
| Identifier | Accession ID/E_25_300 |

**Report Details**

* **Code**: [Pathology report gross observation Narrative](Observation-IntegratedMacroscopicGrouper.md)
  * **Value**: 
  * **Flags**: Final
  * **When For**: 2025-02-06 08:30:00+0100
* **Code**: [Pathology report final diagnosis Narrative](Observation-IntegratedDiagnosticConclusionGrouper.md)
  * **Value**: 
  * **Flags**: Final
  * **When For**: 2025-02-10

Invasives Mammakarzinom NST (ICD-O 8500/3), pT1c pN1mi(sn), Nottingham Grad 2 (Score 6: Tubuli 3, Kernpleomorphie 2, Mitosen 1). Begleitendes DCIS, intermediärer Kerngrad, kribriform, fokale Komedo-Nekrosen. Alle Resektionsränder tumorfrei (invasiv 5 mm, DCIS 3 mm). Keine LVI. ER+ (90%), PR+ (60%), HER2 1+ (nicht amplifiziert), Ki-67 15%. SLN 1/2 befallen (Mikrometastase 1,2 mm in SLN #1), keine extranodale Infiltration.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "IntegratedReport",
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
    "value" : "E_25_300"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/IntegratedReportRequest"
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
    "reference" : "Specimen/IntegratedBETSpecimenPart"
  },
  {
    "reference" : "Specimen/IntegratedBETSpecimenBlock01"
  },
  {
    "reference" : "Specimen/IntegratedBETSpecimenBlock02"
  },
  {
    "reference" : "Specimen/IntegratedBETSpecimenBlock03"
  },
  {
    "reference" : "Specimen/IntegratedBETSpecimenBlock04"
  },
  {
    "reference" : "Specimen/IntegratedBETSpecimenBlock05"
  },
  {
    "reference" : "Specimen/IntegratedBETSpecimenBlock06"
  },
  {
    "reference" : "Specimen/IntegratedBETSlideHE01"
  },
  {
    "reference" : "Specimen/IntegratedBETSlideHE02"
  },
  {
    "reference" : "Specimen/IntegratedBETSlideER01"
  },
  {
    "reference" : "Specimen/IntegratedBETSlidePR01"
  },
  {
    "reference" : "Specimen/IntegratedBETSlideHER2IHC01"
  },
  {
    "reference" : "Specimen/IntegratedBETSlideKi67-01"
  },
  {
    "reference" : "Specimen/IntegratedBETSlideCK18-01"
  },
  {
    "reference" : "Specimen/IntegratedBETSlidep40-01"
  },
  {
    "reference" : "Specimen/IntegratedBETSlideECad-01"
  },
  {
    "reference" : "Specimen/IntegratedBETSlideBlock02-HE01"
  },
  {
    "reference" : "Specimen/IntegratedBETSlideBlock02-HE02"
  },
  {
    "reference" : "Specimen/IntegratedBETSlideRR-Superior-HE01"
  },
  {
    "reference" : "Specimen/IntegratedBETSlideRR-Inferior-HE01"
  },
  {
    "reference" : "Specimen/IntegratedBETSlideRR-Medial-HE01"
  },
  {
    "reference" : "Specimen/IntegratedBETSlideRR-Lateral-HE01"
  },
  {
    "reference" : "Specimen/IntegratedSLNSpecimenPart"
  },
  {
    "reference" : "Specimen/IntegratedSLNSpecimenBlock01"
  },
  {
    "reference" : "Specimen/IntegratedSLNSpecimenBlock02"
  },
  {
    "reference" : "Specimen/IntegratedSLNSlideHE01"
  },
  {
    "reference" : "Specimen/IntegratedSLNSlideHE02"
  },
  {
    "reference" : "Specimen/IntegratedSLNSlideHE03"
  },
  {
    "reference" : "Specimen/IntegratedSLNSlideHE04"
  }],
  "result" : [{
    "reference" : "Observation/IntegratedMacroscopicGrouper"
  },
  {
    "reference" : "Observation/IntegratedDiagnosticConclusionGrouper"
  }],
  "conclusion" : "Invasives Mammakarzinom NST (ICD-O 8500/3), pT1c pN1mi(sn), Nottingham Grad 2 (Score 6: Tubuli 3, Kernpleomorphie 2, Mitosen 1). Begleitendes DCIS, intermediärer Kerngrad, kribriform, fokale Komedo-Nekrosen. Alle Resektionsränder tumorfrei (invasiv 5 mm, DCIS 3 mm). Keine LVI. ER+ (90%), PR+ (60%), HER2 1+ (nicht amplifiziert), Ki-67 15%. SLN 1/2 befallen (Mikrometastase 1,2 mm in SLN #1), keine extranodale Infiltration."
}

```
