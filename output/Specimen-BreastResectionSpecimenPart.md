# BET-Exzisionspräparat (Einsendespecimen) - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BET-Exzisionspräparat (Einsendespecimen)**

## Example Specimen: BET-Exzisionspräparat (Einsendespecimen)

Profiles: [MII PR Patho Specimenversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen), [MII PR Biobank Specimen Bioprobe Coreversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)

**identifier**: Placer Identifier/OP25_210_A, Filler Identifier/E_25_210_A

**accessionIdentifier**: `https://pathologie.example-hospital.de/fhir/fn/befundbericht`/E_25_210

**status**: Available

**type**: Specimen from breast obtained by excision (specimen)

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**request**: [ServiceRequest Pathology synoptic report](ServiceRequest-BreastResectionReportRequest.md)

### Collections

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** | **Method** | **BodySite** |
| * | [Practitioner Thomas Richter ](Practitioner-BreastSurgeonPractitioner.md) | 2025-02-05 10:00:00+0100 | Wide local excision of breast lesion (procedure) | Structure of lower outer quadrant of breast (body structure) |

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Additive[x]** |
| * | Specimen vial (physical object) | Neutral buffered formalin (substance) |

**note**: 

> 

BET-Exzisionspräparat Mamma links, unterer äußerer Quadrant, 5 Uhr, 50 mm von Mamille. Mit Haut, Drahthäkchen in situ. 42 x 35 x 18 mm, 10 g. Lamellierung in 8 Scheiben à 5 mm. Schnittfläche: grau-weißlich, derber Herdbefund zentral in Scheibe III–V, ca. 18 mm.




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "BreastResectionSpecimenPart",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0",
    "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PLAC"
      }]
    },
    "system" : "https://senologie.example-hospital.de/fhir/specimen/placer",
    "value" : "OP25_210_A"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "FILL"
      }]
    },
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_210_A"
  }],
  "accessionIdentifier" : {
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_210"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "397199005",
      "display" : "Specimen from breast obtained by excision (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "request" : [{
    "reference" : "ServiceRequest/BreastResectionReportRequest"
  }],
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/BreastSurgeonPractitioner"
    },
    "collectedDateTime" : "2025-02-05T10:00:00+01:00",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "237371007",
        "display" : "Wide local excision of breast lesion (procedure)"
      }]
    },
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "33564002",
        "display" : "Structure of lower outer quadrant of breast (body structure)"
      }]
    }
  },
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "434746001",
        "display" : "Specimen vial (physical object)"
      }]
    },
    "additiveCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "434162003",
        "display" : "Neutral buffered formalin (substance)"
      }]
    }
  }],
  "note" : [{
    "text" : "BET-Exzisionspräparat Mamma links, unterer äußerer Quadrant, 5 Uhr, 50 mm von Mamille. Mit Haut, Drahthäkchen in situ. 42 x 35 x 18 mm, 10 g. Lamellierung in 8 Scheiben à 5 mm. Schnittfläche: grau-weißlich, derber Herdbefund zentral in Scheibe III–V, ca. 18 mm."
  }]
}

```
