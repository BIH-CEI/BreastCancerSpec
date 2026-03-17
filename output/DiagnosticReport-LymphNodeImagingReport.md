# Bildgebungsbefund SLN-Biopsie - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bildgebungsbefund SLN-Biopsie**

## Example DiagnosticReport: Bildgebungsbefund SLN-Biopsie

## MG Breast Screening (Radiology) 

| | |
| :--- | :--- |
| Subject | Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105) |
| When For | 2025-01-08 |

**Report Details**

Mammografie und Sonographie: Klinisch unauffällige Axilla links (cN0). Kein Hinweis auf pathologische axilläre Lymphknoten.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "LymphNodeImagingReport",
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
  "conclusion" : "Mammografie und Sonographie: Klinisch unauffällige Axilla links (cN0). Kein Hinweis auf pathologische axilläre Lymphknoten."
}

```
