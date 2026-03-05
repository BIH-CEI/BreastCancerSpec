# Brustkrebsvorgeschichte - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Brustkrebsvorgeschichte**

## Example Observation: Brustkrebsvorgeschichte

**status**: Final

**code**: Brustkrebsvorgeschichte

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**value**: Ersterkrankung



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BreastResectionCancerHistory",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "415076002",
      "display" : "Personal history of primary malignant neoplasm of breast (situation)"
    }],
    "text" : "Brustkrebsvorgeschichte"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "valueCodeableConcept" : {
    "text" : "Ersterkrankung"
  }
}

```
