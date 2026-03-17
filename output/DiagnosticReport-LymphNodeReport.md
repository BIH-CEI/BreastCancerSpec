# Pathologiebericht SLN-Biopsie Axilla - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pathologiebericht SLN-Biopsie Axilla**

## Example DiagnosticReport: Pathologiebericht SLN-Biopsie Axilla

Profile: [MII PR Patho Reportversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report)

## Pathology Synoptic report (Surgical Pathology) 

| | |
| :--- | :--- |
| Subject | Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105) |
| When For | 2025-02-10 14:00:00+0100 |
| Reported | 2025-02-10 17:00:00+0100 |
| Performer | [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md) |
| Identifier | Accession ID/E_25_211 |

**Report Details**

* **Code**: [Pathology report gross observation Narrative](Observation-LymphNodeMacroscopicGrouper.md)(Axillary lymph node structure (body structure))
  * **Value**: 
  * **Flags**: Final
  * **When For**: 2025-02-06 08:30:00+0100
* **Code**: [Pathology report final diagnosis Narrative](Observation-LymphNodeDiagnosticConclusionGrouper.md)
  * **Value**: 
  * **Flags**: Final
  * **When For**: 2025-02-10

Sentinel-Lymphknoten-Biopsie linke Axilla: 2 SLN untersucht, 1x Mikrometastase (1,2 mm) in SLN #1, 1x tumorfrei (SLN #2). Keine extranodale Infiltration. pN1mi(sn).



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "LymphNodeReport",
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
    "value" : "E_25_211"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/LymphNodeReportRequest"
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
    "reference" : "Specimen/LymphNodeSpecimenPart"
  },
  {
    "reference" : "Specimen/LymphNodeSpecimenBlock01"
  },
  {
    "reference" : "Specimen/LymphNodeSpecimenBlock02"
  },
  {
    "reference" : "Specimen/LymphNodeSpecimenSlideHE01"
  },
  {
    "reference" : "Specimen/LymphNodeSpecimenSlideHE02"
  },
  {
    "reference" : "Specimen/LymphNodeSpecimenSlideHE03"
  },
  {
    "reference" : "Specimen/LymphNodeSpecimenSlideHE04"
  }],
  "result" : [{
    "reference" : "Observation/LymphNodeMacroscopicGrouper"
  },
  {
    "reference" : "Observation/LymphNodeDiagnosticConclusionGrouper"
  }],
  "conclusion" : "Sentinel-Lymphknoten-Biopsie linke Axilla: 2 SLN untersucht, 1x Mikrometastase (1,2 mm) in SLN #1, 1x tumorfrei (SLN #2). Keine extranodale Infiltration. pN1mi(sn)."
}

```
