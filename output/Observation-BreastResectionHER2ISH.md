# HER2 Amplifikation (ISH) - BET - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HER2 Amplifikation (ISH) - BET**

## Example Observation: HER2 Amplifikation (ISH) - BET

Profile: [MII PR Patho Findingversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)

**basedOn**: [ServiceRequest Pathology synoptic report](ServiceRequest-BreastResectionReportRequest.md)

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Her2 Amplifikation

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-10

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: Nicht amplifiziert

**specimen**: [Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_210_A_1_1_HER2IHC_01; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_210; status = available; type = Tissue section (specimen)](Specimen-BreastResectionSpecimenSlideHER2IHC01.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseBreastResection.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Gene studied [ID] | ERBB2 |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BreastResectionHER2ISH",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/BreastResectionReportRequest"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  },
  {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "22637-3"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "85318-4",
      "display" : "ERBB2 gene duplication [Presence] in Breast cancer specimen by FISH"
    }],
    "text" : "Her2 Amplifikation"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-02-10",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "2667000",
      "display" : "Absent (qualifier value)"
    }],
    "text" : "Nicht amplifiziert"
  },
  "specimen" : {
    "reference" : "Specimen/BreastResectionSpecimenSlideHER2IHC01"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseBreastResection"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48018-6",
        "display" : "Gene studied [ID]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.genenames.org/geneId",
        "code" : "HGNC:3430",
        "display" : "ERBB2"
      }]
    }
  }]
}

```
