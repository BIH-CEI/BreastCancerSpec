# Proben limitiert auswertbar - SLN - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Proben limitiert auswertbar - SLN**

## Example Observation: Proben limitiert auswertbar - SLN

**status**: Final

**code**: Proben limitiert auswertbar wegen fehlender klinischer Informationen

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**value**: No (qualifier value)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "LymphNodeSpecimenLimited",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "125156009",
      "display" : "Satisfactory for evaluation but limited by lack of pertinent clinical patient information (finding)"
    }],
    "text" : "Proben limitiert auswertbar wegen fehlender klinischer Informationen"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "373067005",
      "display" : "No (qualifier value)"
    }]
  }
}

```
