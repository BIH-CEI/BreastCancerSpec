# Befundmarkierung - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Befundmarkierung**

## Example Observation: Befundmarkierung

**status**: Final

**code**: Befundmarkierung

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**value**: Drahthäkchen



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BreastResectionSpecimenMarking",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "836381000000102",
      "display" : "Insertion of marker into breast using X-ray guidance (procedure)"
    }],
    "text" : "Befundmarkierung"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "valueCodeableConcept" : {
    "text" : "Drahthäkchen"
  }
}

```
