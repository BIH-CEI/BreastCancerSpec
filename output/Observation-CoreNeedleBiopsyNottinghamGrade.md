# Nottingham Grade - Stanzbiopsie - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nottingham Grade - Stanzbiopsie**

## Example Observation: Nottingham Grade - Stanzbiopsie

Profile: [MII PR Patho Finding](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding) version: 2026.0.0

**basedOn**: [ServiceRequest Breast Pathology biopsy report](ServiceRequest-CoreNeedleBiopsyReportRequest.md)

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Histologischer Tumorgrad (Elston-Ellis-Grad)

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-01-17

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: Nottingham Grad 2 (Score 6)

**specimen**: [Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_105_A_1_1_HE_01; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_105; status = available; type = Tissue section (specimen)](Specimen-CoreNeedleBiopsySpecimenSlideHE01.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/Core-Needle-Biopsy' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseCoreNeedleBiopsy.md)

> **component****code**: Nottingham total score of primary malignant neoplasm of breast (observable entity)**value**: 6 score (Details: UCUM code{score} = '{score}')

> **component****code**: Glandular differentiation [Score] in Breast cancer specimen by Nottingham**value**: Tubulus Score 3

> **component****code**: Nuclear pleomorphism in Breast tumor by Nottingham**value**: Kernpleomorphie Score 2

> **component****code**: Mitotic rate [Score] in Breast cancer specimen by Nottingham**value**: Mitoserate Score 1



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CoreNeedleBiopsyNottinghamGrade",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/CoreNeedleBiopsyReportRequest"
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
      "code" : "44648-4",
      "display" : "Histologic grade [Score] in Breast cancer specimen by Nottingham"
    }],
    "text" : "Histologischer Tumorgrad (Elston-Ellis-Grad)"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-01-17",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1155703007",
      "display" : "G2: Moderately differentiated histologic grade (qualifier value)"
    }],
    "text" : "Nottingham Grad 2 (Score 6)"
  },
  "specimen" : {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenSlideHE01"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseCoreNeedleBiopsy"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1287461000",
        "display" : "Nottingham total score of primary malignant neoplasm of breast (observable entity)"
      }]
    },
    "valueQuantity" : {
      "value" : 6,
      "unit" : "score",
      "system" : "http://unitsofmeasure.org",
      "code" : "{score}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "85321-8",
        "display" : "Glandular differentiation [Score] in Breast cancer specimen by Nottingham"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA27227-0",
        "display" : "Score 3"
      }],
      "text" : "Tubulus Score 3"
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
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA27226-2",
        "display" : "Score 2"
      }],
      "text" : "Kernpleomorphie Score 2"
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
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA27225-4",
        "display" : "Score 1"
      }],
      "text" : "Mitoserate Score 1"
    }
  }]
}

```
