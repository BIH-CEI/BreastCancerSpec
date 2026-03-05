# Mammografie/Ultraschall-Befund BET - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mammografie/Ultraschall-Befund BET**

## Example DiagnosticReport: Mammografie/Ultraschall-Befund BET

## MG Breast Screening (Radiology) 

| | |
| :--- | :--- |
| Subject | Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105) |
| When For | 2025-01-08 |

**Report Details**

BI-RADS 4b: Herdbefund linke Brust, unterer äußerer Quadrant, 5 Uhr, 5 cm von Mamille. Radiologische Ausdehnung ca. 15 mm. Mammografie und Ultraschall. Indikation zur BET.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "BreastResectionImagingReport",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "RAD",
      "display" : "Radiology"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "24606-6",
      "display" : "MG Breast Screening"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-01-08",
  "conclusion" : "BI-RADS 4b: Herdbefund linke Brust, unterer äußerer Quadrant, 5 Uhr, 5 cm von Mamille. Radiologische Ausdehnung ca. 15 mm. Mammografie und Ultraschall. Indikation zur BET."
}

```
