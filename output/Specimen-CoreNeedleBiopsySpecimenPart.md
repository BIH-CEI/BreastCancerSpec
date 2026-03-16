# Stanzzylinder-Präparat (Einsendespecimen) - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stanzzylinder-Präparat (Einsendespecimen)**

## Example Specimen: Stanzzylinder-Präparat (Einsendespecimen)

Profiles: [MII PR Patho Specimenversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen), [MII PR Biobank Specimen Bioprobe Coreversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)

**identifier**: Placer Identifier/BX25_105_A, Filler Identifier/E_25_105_A

**accessionIdentifier**: `https://pathologie.example-hospital.de/fhir/fn/befundbericht`/E_25_105

**status**: Available

**type**: Specimen from breast obtained by core needle biopsy (specimen)

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**request**: [ServiceRequest Breast Pathology biopsy report](ServiceRequest-CoreNeedleBiopsyReportRequest.md)

### Collections

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** | **Method** | **BodySite** |
| * | [Practitioner Thomas Richter ](Practitioner-BreastSurgeonPractitioner.md) | 2025-01-15 09:30:00+0100 | Core needle biopsy (procedure) | Structure of lower outer quadrant of breast (body structure) |

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Additive[x]** |
| * | Specimen vial (physical object) | Neutral buffered formalin (substance) |

**note**: 

> 

HG-Stanzen/Mamma, li., 5 Uhr, 5 cm von Mamille, US-gestützte Stanzbiopsie. 2 Stanzzylinder, zusammen 22 mm, mittelfest, grauweißlich, Bleistiftminenstärke.




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "CoreNeedleBiopsySpecimenPart",
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
    "value" : "BX25_105_A"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "FILL"
      }]
    },
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_105_A"
  }],
  "accessionIdentifier" : {
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_105"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "122737001",
      "display" : "Specimen from breast obtained by core needle biopsy (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "request" : [{
    "reference" : "ServiceRequest/CoreNeedleBiopsyReportRequest"
  }],
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/BreastSurgeonPractitioner"
    },
    "collectedDateTime" : "2025-01-15T09:30:00+01:00",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "9911007",
        "display" : "Core needle biopsy (procedure)"
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
    "text" : "HG-Stanzen/Mamma, li., 5 Uhr, 5 cm von Mamille, US-gestützte Stanzbiopsie. 2 Stanzzylinder, zusammen 22 mm, mittelfest, grauweißlich, Bleistiftminenstärke."
  }]
}

```
