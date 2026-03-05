# Präparateradiographie klinisch - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Präparateradiographie klinisch**

## Example Observation: Präparateradiographie klinisch

**status**: Final

**code**: Präparateradiographie beigelegt

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**value**: Ja, beigelegt



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BreastResectionSpecimenRadiographyClinical",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80865008:363702006=185008008",
      "display" : "80865008|Specimen mammography|:363702006|Has focus|=185008008|Medical reports sent|"
    }],
    "text" : "Präparateradiographie beigelegt"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "52101004",
      "display" : "Present (qualifier value)"
    }],
    "text" : "Ja, beigelegt"
  }
}

```
