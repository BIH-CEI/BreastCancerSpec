# pT-Kategorie - BET - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pT-Kategorie - BET**

## Example Observation: pT-Kategorie - BET

Profile: [MII PR Onkologie TNM T-Kategorieversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie)

**basedOn**: [ServiceRequest Pathology synoptic report](ServiceRequest-BreastResectionReportRequest.md)

**status**: Final

**code**: Primärtumor (pT-Kategorie)

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-10

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: pT1

**specimen**: [Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_210_A_1_1_HE_01; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_210; status = available; type = Tissue section (specimen)](Specimen-BreastResectionSpecimenSlideHE01.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseBreastResection.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BreastResectionPT",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie|2026.0.0"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/BreastResectionReportRequest"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "21899-0",
      "display" : "Primary tumor.pathology Cancer"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "384625004",
      "display" : "pT category (observable entity)"
    }],
    "text" : "Primärtumor (pT-Kategorie)"
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
      "code" : "1352559008",
      "display" : "Union for International Cancer Control pT1 (qualifier value)"
    }],
    "text" : "pT1"
  },
  "specimen" : {
    "reference" : "Specimen/BreastResectionSpecimenSlideHE01"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseBreastResection"
  }]
}

```
