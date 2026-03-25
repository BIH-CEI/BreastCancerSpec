# Präsentationsmodus (integriert) - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Präsentationsmodus (integriert)**

## Example Observation: Präsentationsmodus (integriert)

**status**: Final

**code**: Präsentationsmodus

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**value**: Frisch



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IntegratedPresentationMode",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "67098-4",
      "display" : "Reason for test or procedure"
    }],
    "text" : "Präsentationsmodus"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "valueCodeableConcept" : {
    "text" : "Frisch"
  }
}

```
