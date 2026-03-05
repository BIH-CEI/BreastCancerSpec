# Pathologiebericht Stanzbiopsie Mamma - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pathologiebericht Stanzbiopsie Mamma**

## Example DiagnosticReport: Pathologiebericht Stanzbiopsie Mamma

Profile: [MII PR Patho Reportversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report)

## Pathology Synoptic report (Surgical Pathology) 

| | |
| :--- | :--- |
| Subject | Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105) |
| When For | 2025-01-17 15:00:00+0100 |
| Reported | 2025-01-17 17:00:00+0100 |
| Performer | [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md) |
| Identifier | Accession ID/E_25_105 |

**Report Details**

* **Code**: [Pathology report gross observation Narrative](Observation-CoreNeedleBiopsyMacroscopicGrouper.md)(Breast structure (body structure))
  * **Value**: Makroskopische Befunde der HG-Stanzzylinder
  * **Flags**: Final
  * **Note**: > 2 Stanzzylinder, zusammen 22 mm, mittelfest, grauweißlich, Bleistiftminenstärke. 1 Paraffinblock.
  * **When For**: 2025-01-16 08:30:00+0100
* **Code**: [Pathology report final diagnosis Narrative](Observation-CoreNeedleBiopsyDiagnosticConclusionGrouper.md)
  * **Value**: 
  * **Flags**: Final
  * **Note**: > Zusammenfassung: Invasives Mammakarzinom NST (ICD-O 8500/3), Nottingham Grad 2 (Score 6: Tubuli 3, Pleomorphie 2, Mitosen 1). ER positiv (85%), PR positiv (50%), HER2 negativ (nicht amplifiziert), Ki-67 10%. B-Klassifikation B5b. Keine relevanten Mikroverkalkungen. Präparateradiogramm gesehen.By Practitioner/PathologistPractitioner @2025-01-17
  * **When For**: 2025-01-17

Invasives Mammakarzinom NST (ICD-O 8500/3), Nottingham Grad 2 (Score 6: Tubuli 3, Kernpleomorphie 2, Mitosen 1). ER+ (85%), PR+ (50%), HER2- (nicht amplifiziert), Ki-67 10%. B-Klassifikation B5b.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "CoreNeedleBiopsyReport",
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
    "value" : "E_25_105"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/CoreNeedleBiopsyReportRequest"
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
  "effectiveDateTime" : "2025-01-17T15:00:00+01:00",
  "issued" : "2025-01-17T17:00:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "specimen" : [{
    "reference" : "Specimen/CoreNeedleBiopsySpecimenPart"
  },
  {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenBlock01"
  },
  {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenSlideHE01"
  },
  {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenSlideHE02"
  },
  {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenSlideHE03"
  },
  {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenSlideHE04"
  },
  {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenSlideER01"
  },
  {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenSlideER02"
  },
  {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenSlidePR01"
  },
  {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenSlidePR02"
  },
  {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenSlideHER2-01"
  },
  {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenSlideHER2-02"
  },
  {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenSlideKi67-01"
  },
  {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenSlideKi67-02"
  }],
  "result" : [{
    "reference" : "Observation/CoreNeedleBiopsyMacroscopicGrouper"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyDiagnosticConclusionGrouper"
  }],
  "conclusion" : "Invasives Mammakarzinom NST (ICD-O 8500/3), Nottingham Grad 2 (Score 6: Tubuli 3, Kernpleomorphie 2, Mitosen 1). ER+ (85%), PR+ (50%), HER2- (nicht amplifiziert), Ki-67 10%. B-Klassifikation B5b."
}

```
