# Resektionsrandstatus invasiv - BET - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resektionsrandstatus invasiv - BET**

## Example Observation: Resektionsrandstatus invasiv - BET

Profile: [MII PR Patho Findingversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)

**basedOn**: [ServiceRequest Pathology synoptic report](ServiceRequest-BreastResectionReportRequest.md)

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Resektionsrandstatus invasiv

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-10

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: Nicht befallen (R0)

**specimen**: [Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_210_A_3_1_HE_01; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_210; status = available; type = Tissue section (specimen)](Specimen-BreastResectionSpecimenSlideRR-Superior-HE01.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseBreastResection.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BreastResectionMarginStatusInvasive",
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
      "code" : "44669-0",
      "display" : "Margin involved BT"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "371488000",
      "display" : "Presence of neoplasm at excised surgical margin (observable entity)"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "1240395000",
      "display" : "Surgical margin involved by primary malignant neoplasm of breast in excised breast specimen (observable entity)"
    }],
    "text" : "Resektionsrandstatus invasiv"
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
    "text" : "Nicht befallen (R0)"
  },
  "specimen" : {
    "reference" : "Specimen/BreastResectionSpecimenSlideRR-Superior-HE01"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseBreastResection"
  }]
}

```
