# HER2-B-DISH Reagenz Stanzbiopsie - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HER2-B-DISH Reagenz Stanzbiopsie**

## Example Substance: HER2-B-DISH Reagenz Stanzbiopsie

Profile: [MII PR Biobank Substance Additivversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance)

**status**: Active

**category**: Chemical

**code**: Tissue stain (substance)

**description**: VENTANA HER2 Dual ISH, Roche



## Resource Content

```json
{
  "resourceType" : "Substance",
  "id" : "CoreNeedleBiopsySubstanceHER2ISH",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0"]
  },
  "status" : "active",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/substance-category",
      "code" : "chemical",
      "display" : "Chemical"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "45389009",
      "display" : "Tissue stain (substance)"
    }]
  },
  "description" : "VENTANA HER2 Dual ISH, Roche"
}

```
