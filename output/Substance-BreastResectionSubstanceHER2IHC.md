# HER2-IHC Reagenz BET - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HER2-IHC Reagenz BET**

## Example Substance: HER2-IHC Reagenz BET

Profile: [MII PR Biobank Substance Additiv](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance) version: 2026.0.0

**status**: Active

**category**: Chemical

**code**: Tissue stain (substance)

**description**: VENTANA HER2 (4B5), Roche



## Resource Content

```json
{
  "resourceType" : "Substance",
  "id" : "BreastResectionSubstanceHER2IHC",
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
  "description" : "VENTANA HER2 (4B5), Roche"
}

```
