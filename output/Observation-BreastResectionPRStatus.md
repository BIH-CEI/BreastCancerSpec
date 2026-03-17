# Progesteronrezeptor-Status - BET - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Progesteronrezeptor-Status - BET**

## Example Observation: Progesteronrezeptor-Status - BET

Profile: [MII PR Patho Findingversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)

**basedOn**: [ServiceRequest Pathology synoptic report](ServiceRequest-BreastResectionReportRequest.md)

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Hormonrezeptorstatus Progesteron

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-10

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: Positiv

**specimen**: [Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_210_A_1_1_PR_01; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_210; status = available; type = Tissue section (specimen)](Specimen-BreastResectionSpecimenSlidePR01.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseBreastResection.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Gene studied [ID] | PGR |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BreastResectionPRStatus",
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
      "code" : "16113-3",
      "display" : "Progesterone receptor [Interpretation] in Tissue"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "1234806008",
      "display" : "Observation using immunohistochemistry (observable entity)"
    }],
    "text" : "Hormonrezeptorstatus Progesteron"
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
      "code" : "52101004",
      "display" : "Present (qualifier value)"
    }],
    "text" : "Positiv"
  },
  "specimen" : {
    "reference" : "Specimen/BreastResectionSpecimenSlidePR01"
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
        "code" : "HGNC:8910",
        "display" : "PGR"
      }]
    }
  }]
}

```
