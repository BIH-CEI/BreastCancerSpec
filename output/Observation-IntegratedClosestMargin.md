# Nächster tumorfreier Resektionsrand - BET - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nächster tumorfreier Resektionsrand - BET**

## Example Observation: Nächster tumorfreier Resektionsrand - BET

Profile: [MII PR Patho Findingversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)

**basedOn**: [ServiceRequest Pathology synoptic report](ServiceRequest-IntegratedReportRequest.md)

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Richtung des nächsten tumorfreien RR

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-10

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: Posterior

**specimen**: [Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_300_A_3_1_HE_01; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_300; status = available; type = Tissue section (specimen)](Specimen-IntegratedBETSlideRR-Superior-HE01.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_Mamma_GH' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-IntegratedQRBreastResection.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IntegratedClosestMargin",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/IntegratedReportRequest"
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
      "code" : "44674-0",
      "display" : "IC uninv marg closest BT"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "170001000004107",
      "display" : "Surgical margin closest to malignant neoplasm in excised specimen of breast (observable entity)"
    }],
    "text" : "Richtung des nächsten tumorfreien RR"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-02-10",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "valueCodeableConcept" : {
    "text" : "Posterior"
  },
  "specimen" : {
    "reference" : "Specimen/IntegratedBETSlideRR-Superior-HE01"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/IntegratedQRBreastResection"
  }]
}

```
