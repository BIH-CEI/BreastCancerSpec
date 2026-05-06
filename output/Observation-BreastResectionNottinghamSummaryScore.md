# Nottingham-Summenscore - BET - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nottingham-Summenscore - BET**

## Example Observation: Nottingham-Summenscore - BET

Profile: [MII PR Patho Finding](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding) version: 2026.0.0

**basedOn**: [ServiceRequest Pathology synoptic report](ServiceRequest-BreastResectionReportRequest.md)

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Elston-Ellis-Summenscore

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-10

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: 6 score (Details: UCUM code{score} = '{score}')

**specimen**: [Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_210_A_1_1_HE_01; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_210; status = available; type = Tissue section (specimen)](Specimen-BreastResectionSpecimenSlideHE01.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseBreastResection.md)

> **component****code**: Glandular differentiation [Score] in Breast cancer specimen by Nottingham**value**: 3 score (Details: UCUM code{score} = '{score}')

> **component****code**: Nuclear pleomorphism in Breast tumor by Nottingham**value**: 2 score (Details: UCUM code{score} = '{score}')

> **component****code**: Mitotic rate [Score] in Breast cancer specimen by Nottingham**value**: 1 score (Details: UCUM code{score} = '{score}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BreastResectionNottinghamSummaryScore",
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
      "system" : "http://snomed.info/sct",
      "code" : "1287461000",
      "display" : "Nottingham total score of primary malignant neoplasm of breast (observable entity)"
    }],
    "text" : "Elston-Ellis-Summenscore"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-02-10",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "valueQuantity" : {
    "value" : 6,
    "unit" : "score",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "specimen" : {
    "reference" : "Specimen/BreastResectionSpecimenSlideHE01"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseBreastResection"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "85321-8",
        "display" : "Glandular differentiation [Score] in Breast cancer specimen by Nottingham"
      }]
    },
    "valueQuantity" : {
      "value" : 3,
      "unit" : "score",
      "system" : "http://unitsofmeasure.org",
      "code" : "{score}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "44645-0",
        "display" : "Nuclear pleomorphism in Breast tumor by Nottingham"
      }]
    },
    "valueQuantity" : {
      "value" : 2,
      "unit" : "score",
      "system" : "http://unitsofmeasure.org",
      "code" : "{score}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "85300-2",
        "display" : "Mitotic rate [Score] in Breast cancer specimen by Nottingham"
      }]
    },
    "valueQuantity" : {
      "value" : 1,
      "unit" : "score",
      "system" : "http://unitsofmeasure.org",
      "code" : "{score}"
    }
  }]
}

```
