# Ki-67 Index - Stanzbiopsie - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ki-67 Index - Stanzbiopsie**

## Example Observation: Ki-67 Index - Stanzbiopsie

Profile: [MII PR Patho Finding](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding) version: 2026.0.0

**basedOn**: [ServiceRequest Breast Pathology biopsy report](ServiceRequest-CoreNeedleBiopsyReportRequest.md)

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Cells.Ki-67 nuclear Ag/cells in Breast cancer specimen by Immune stain

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-01-17

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: 10 % (Details: UCUM code% = '%')

**specimen**: [Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_105_A_1_1_Ki67_01; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_105; status = available; type = Tissue section (specimen)](Specimen-CoreNeedleBiopsySpecimenSlideKi67-01.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/Core-Needle-Biopsy' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseCoreNeedleBiopsy.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Gene studied [ID] | MKI67 |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CoreNeedleBiopsyKi67",
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
      "code" : "85330-9",
      "display" : "Cells.Ki-67 nuclear Ag/cells in Breast cancer specimen by Immune stain"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "1234806008",
      "display" : "Observation using immunohistochemistry (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-01-17",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "valueQuantity" : {
    "value" : 10,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "specimen" : {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenSlideKi67-01"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseCoreNeedleBiopsy"
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
        "code" : "HGNC:7107",
        "display" : "MKI67"
      }]
    }
  }]
}

```
