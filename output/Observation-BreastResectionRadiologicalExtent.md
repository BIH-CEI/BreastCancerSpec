# Radiologische Ausdehnung - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiologische Ausdehnung**

## Example Observation: Radiologische Ausdehnung

**status**: Final

**code**: Radiologische Ausdehnung

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**value**: 15 mm (Details: UCUM codemm = 'mm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BreastResectionRadiologicalExtent",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "396361002",
      "display" : "Lesion size, largest dimension (observable entity)"
    }],
    "text" : "Radiologische Ausdehnung"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "valueQuantity" : {
    "value" : 15,
    "unit" : "mm",
    "system" : "http://unitsofmeasure.org",
    "code" : "mm"
  }
}

```
