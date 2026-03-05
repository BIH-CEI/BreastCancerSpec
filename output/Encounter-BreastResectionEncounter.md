# Encounter für BET Mamma - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter für BET Mamma**

## Example Encounter: Encounter für BET Mamma

**identifier**: `http://example.hospital.de/encounters`/E_25_210

**status**: Finished

**class**: [not stated]: IMP (IMP)

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "BreastResectionEncounter",
  "identifier" : [{
    "system" : "http://example.hospital.de/encounters",
    "value" : "E_25_210"
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
