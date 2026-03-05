# Genetische Prädisposition - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Genetische Prädisposition**

## Example Observation: Genetische Prädisposition

**status**: Final

**code**: Genetische Prädisposition

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**value**: Nicht bekannt



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BreastResectionGeneticPredisposition",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "76522002",
      "display" : "Diathesis, function (observable entity)"
    }],
    "text" : "Genetische Prädisposition"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "261665006",
      "display" : "Unknown (qualifier value)"
    }],
    "text" : "Nicht bekannt"
  }
}

```
