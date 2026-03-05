# Encounter für Stanzbiopsie Mamma - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter für Stanzbiopsie Mamma**

## Example Encounter: Encounter für Stanzbiopsie Mamma

**identifier**: `http://example.hospital.de/encounters`/E_25_105

**status**: Finished

**class**: [not stated]: AMB (AMB)

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "CoreNeedleBiopsyEncounter",
  "identifier" : [{
    "system" : "http://example.hospital.de/encounters",
    "value" : "E_25_105"
  }],
  "status" : "finished",
  "class" : {
    "code" : "AMB"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  }
}

```
