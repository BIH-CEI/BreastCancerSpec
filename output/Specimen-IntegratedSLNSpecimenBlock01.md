# Paraffinblock 01 SLN #1 (integriert) - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paraffinblock 01 SLN #1 (integriert)**

## Example Specimen: Paraffinblock 01 SLN #1 (integriert)

Profiles: [MII PR Patho Specimenversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen), [MII PR Biobank Specimen Bioprobe Coreversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)

**identifier**: `https://pathologie.example-hospital.de/fhir/fn/befundbericht`/E_25_300_B_1

**accessionIdentifier**: `https://pathologie.example-hospital.de/fhir/fn/befundbericht`/E_25_300

**status**: Available

**type**: Tissue block specimen (specimen)

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**parent**: [Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_300; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.](Specimen-IntegratedSLNSpecimenPart.md)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collected[x]** | **Method** |
| * | 2025-02-06 08:00:00+0100 | Gross examination and sampling of tissue specimen (procedure) |

### Processings

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Description** | **Procedure** | **Time[x]** |
| * |  | Zuschnitt und Paraffineinbettung - SLN #1 (halbiert) | Preparation of formalin fixed paraffin embedded tissue specimen (procedure) | 2025-02-06 08:00:00+0100 |

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Additive[x]** |
| * | General specimen container (physical object) | Paraffin wax (substance) |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "IntegratedSLNSpecimenBlock01",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0",
    "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"]
  },
  "identifier" : [{
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_300_B_1"
  }],
  "accessionIdentifier" : {
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_300"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1201985008",
      "display" : "Tissue block specimen (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "parent" : [{
    "reference" : "Specimen/IntegratedSLNSpecimenPart"
  }],
  "collection" : {
    "collectedDateTime" : "2025-02-06T08:00:00+01:00",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "787377000",
        "display" : "Gross examination and sampling of tissue specimen (procedure)"
      }]
    }
  },
  "processing" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
      "valueRange" : {
        "low" : {
          "value" : 2,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        },
        "high" : {
          "value" : 8,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        }
      }
    }],
    "description" : "Zuschnitt und Paraffineinbettung - SLN #1 (halbiert)",
    "procedure" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "787376009",
        "display" : "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
      }]
    },
    "timeDateTime" : "2025-02-06T08:00:00+01:00"
  }],
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "706053007",
        "display" : "General specimen container (physical object)"
      }]
    },
    "additiveCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "311731000",
        "display" : "Paraffin wax (substance)"
      }]
    }
  }]
}

```
