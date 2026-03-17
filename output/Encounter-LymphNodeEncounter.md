# Encounter für SLN-Biopsie Axilla - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter für SLN-Biopsie Axilla**

## Example Encounter: Encounter für SLN-Biopsie Axilla

**identifier**: `http://example.hospital.de/encounters`/E_25_211

**status**: Finished

**class**: [not stated]: IMP (IMP)

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "LymphNodeEncounter",
  "identifier" : [{
    "system" : "http://example.hospital.de/encounters",
    "value" : "E_25_211"
  }],
  "status" : "finished",
  "class" : {
    "code" : "IMP"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  }
}

```
