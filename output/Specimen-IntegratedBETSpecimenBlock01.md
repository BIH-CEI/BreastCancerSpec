# Paraffinblock 01 BET - Tumor (integriert) - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paraffinblock 01 BET - Tumor (integriert)**

## Example Specimen: Paraffinblock 01 BET - Tumor (integriert)

Profiles: [MII PR Patho Specimen](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen) version: 2026.0.0, [MII PR Biobank Specimen Bioprobe Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore) version: 2026.0.0

**identifier**: `https://pathologie.example-hospital.de/fhir/fn/befundbericht`/E_25_300_A_1

**accessionIdentifier**: `https://pathologie.example-hospital.de/fhir/fn/befundbericht`/E_25_300

**status**: Available

**type**: Tissue block specimen (specimen)

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**parent**: [Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_300; status = available; type = Specimen from breast obtained by excision (specimen); note = BET-Exzisionspräparat Mamma links, unterer äußerer Quadrant, 5 Uhr, 50 mm von Mamille. 42 × 35 × 18 mm, 10 g. Haut anhängend, Drahthäkchen in situ. Lamellierung in 8 Scheiben à 5 mm. Schnittfläche: grau-weißlicher Herdbefund zentral in Scheibe III–V, ca. 18 mm.](Specimen-IntegratedBETSpecimenPart.md)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collected[x]** | **Method** |
| * | 2025-02-06 08:00:00+0100 | Gross examination and sampling of tissue specimen (procedure) |

### Processings

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Description** | **Procedure** | **Time[x]** |
| * |  | Zuschnitt und Paraffineinbettung - Tumor zentral, Scheibe III | Preparation of formalin fixed paraffin embedded tissue specimen (procedure) | 2025-02-06 08:00:00+0100 |

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Additive[x]** |
| * | General specimen container (physical object) | Paraffin wax (substance) |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "IntegratedBETSpecimenBlock01",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0",
    "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"]
  },
  "identifier" : [{
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_300_A_1"
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
    "reference" : "Specimen/IntegratedBETSpecimenPart"
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
    "description" : "Zuschnitt und Paraffineinbettung - Tumor zentral, Scheibe III",
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
