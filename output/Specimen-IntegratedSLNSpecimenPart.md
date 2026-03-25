# SLN-Exzisat (integriert) - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SLN-Exzisat (integriert)**

## Example Specimen: SLN-Exzisat (integriert)

Profiles: [MII PR Patho Specimenversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen), [MII PR Biobank Specimen Bioprobe Coreversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)

**identifier**: Placer Identifier/OP25_300_B, Filler Identifier/E_25_300_B

**accessionIdentifier**: `https://pathologie.example-hospital.de/fhir/fn/befundbericht`/E_25_300

**status**: Available

**type**: Lymph node specimen (specimen)

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**request**: [ServiceRequest Pathology synoptic report](ServiceRequest-IntegratedReportRequest.md)

### Collections

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** | **Method** | **BodySite** |
| * | [Practitioner Thomas Richter ](Practitioner-BreastSurgeonPractitioner.md) | 2025-02-05 10:30:00+0100 | Sentinel lymph node biopsy (procedure) | Axillary lymph node structure (body structure) |

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Additive[x]** |
| * | Specimen vial (physical object) | Neutral buffered formalin (substance) |

**note**: 

> 

Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "IntegratedSLNSpecimenPart",
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
    "value" : "OP25_300_B"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "FILL"
      }]
    },
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_300_B"
  }],
  "accessionIdentifier" : {
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_300"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "258589002",
      "display" : "Lymph node specimen (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "request" : [{
    "reference" : "ServiceRequest/IntegratedReportRequest"
  }],
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/BreastSurgeonPractitioner"
    },
    "collectedDateTime" : "2025-02-05T10:30:00+01:00",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "396487001",
        "display" : "Sentinel lymph node biopsy (procedure)"
      }]
    },
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "68171009",
        "display" : "Axillary lymph node structure (body structure)"
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
    "text" : "Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet."
  }]
}

```
