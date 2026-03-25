# Vorchirurgische Therapie (integriert) - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vorchirurgische Therapie (integriert)**

## Example Observation: Vorchirurgische Therapie (integriert)

**status**: Final

**code**: Vorchirurgische Therapie bei invasivem Karzinom

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**value**: Keine neoadjuvante Therapie



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IntegratedPriorTherapy",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "81167-9",
      "display" : "Cancer treatment --preoperative"
    }],
    "text" : "Vorchirurgische Therapie bei invasivem Karzinom"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "373067005",
      "display" : "No (qualifier value)"
    }],
    "text" : "Keine neoadjuvante Therapie"
  }
}

```
