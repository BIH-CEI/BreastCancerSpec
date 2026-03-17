# ER-IHC Schnitt BET (Block01) - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ER-IHC Schnitt BET (Block01)**

## Example Specimen: ER-IHC Schnitt BET (Block01)

Profiles: [MII PR Patho Specimenversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen), [MII PR Biobank Specimen Bioprobe Coreversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)

**identifier**: `https://pathologie.example-hospital.de/fhir/fn/befundbericht`/E_25_210_A_1_1_ER_01

**accessionIdentifier**: `https://pathologie.example-hospital.de/fhir/fn/befundbericht`/E_25_210

**status**: Available

**type**: Tissue section (specimen)

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**parent**: [Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_210_A_1; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_210; status = available; type = Tissue block specimen (specimen)](Specimen-BreastResectionSpecimenBlock01.md)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collected[x]** | **Method** |
| * | 2025-02-06 09:30:00+0100 | Tissue processing technique (procedure) |

> **processing****MII EX Biobank Temperaturbedingungen**: 20-25 °C**description**: Schnittherstellung**procedure**: Sectioning of tissue block (procedure)**time**: 2025-02-06 09:30:00+0100

> **processing****MII EX Biobank Temperaturbedingungen**: 20-25 °C**description**: ER-Immunhistochemie**procedure**: Immunohistochemistry procedure (procedure)**additive**: [Substance Tissue stain (substance)](Substance-BreastResectionSubstanceER.md)**time**: 2025-02-06 10:00:00+0100

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Additive[x]** |
| * | Microscope slide (physical object) | Microscope slide mounting medium (substance) |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "BreastResectionSpecimenSlideER01",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0",
    "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"]
  },
  "identifier" : [{
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_210_A_1_1_ER_01"
  }],
  "accessionIdentifier" : {
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_210"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "430856003",
      "display" : "Tissue section (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "parent" : [{
    "reference" : "Specimen/BreastResectionSpecimenBlock01"
  }],
  "collection" : {
    "collectedDateTime" : "2025-02-06T09:30:00+01:00",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "13283003",
        "display" : "Tissue processing technique (procedure)"
      }]
    }
  },
  "processing" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
      "valueRange" : {
        "low" : {
          "value" : 20,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        },
        "high" : {
          "value" : 25,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        }
      }
    }],
    "description" : "Schnittherstellung",
    "procedure" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "434472006",
        "display" : "Sectioning of tissue block (procedure)"
      }]
    },
    "timeDateTime" : "2025-02-06T09:30:00+01:00"
  },
  {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
      "valueRange" : {
        "low" : {
          "value" : 20,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        },
        "high" : {
          "value" : 25,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        }
      }
    }],
    "description" : "ER-Immunhistochemie",
    "procedure" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "117617002",
        "display" : "Immunohistochemistry procedure (procedure)"
      }]
    },
    "additive" : [{
      "reference" : "Substance/BreastResectionSubstanceER"
    }],
    "timeDateTime" : "2025-02-06T10:00:00+01:00"
  }],
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "433466003",
        "display" : "Microscope slide (physical object)"
      }]
    },
    "additiveCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "430862008",
        "display" : "Microscope slide mounting medium (substance)"
      }]
    }
  }]
}

```
