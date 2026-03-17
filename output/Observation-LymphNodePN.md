# pN-Kategorie - SLN - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pN-Kategorie - SLN**

## Example Observation: pN-Kategorie - SLN

Profile: [MII PR Onkologie TNM N-Kategorieversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie)

**basedOn**: [ServiceRequest Pathology synoptic report](ServiceRequest-LymphNodeReportRequest.md)

**status**: Final

**code**: Regionäre Lymphknoten (pN-Kategorie)

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-10

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: pN1mi(sn)

**specimen**: [Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211_A_1_1_HE_01; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Tissue section (specimen)](Specimen-LymphNodeSpecimenSlideHE01.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseLymphNode.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "LymphNodePN",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie|2026.0.0"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/LymphNodeReportRequest"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "21906-3",
      "display" : "Regional lymph nodes.clinical [Class] Cancer"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "371494008",
      "display" : "pN category (observable entity)"
    }],
    "text" : "Regionäre Lymphknoten (pN-Kategorie)"
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
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-n-kategorie-werte",
      "code" : "pN1mi(sn)"
    }],
    "text" : "pN1mi(sn)"
  },
  "specimen" : {
    "reference" : "Specimen/LymphNodeSpecimenSlideHE01"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
  }]
}

```
