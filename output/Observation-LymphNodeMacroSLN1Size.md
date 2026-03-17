# SLN #1 Größe - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SLN #1 Größe**

## Example Observation: SLN #1 Größe

Profile: [MII PR Patho Findingversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)

**status**: Final

**category**: Laboratory, Pathology report gross observation Narrative

**code**: SLN #1 Größe

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-06 08:30:00+0100

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: 12 x 8 x 6 mm, Patentblau-markiert

**bodySite**: Axillary lymph node structure (body structure)

**specimen**: [Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211_A_1; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Tissue block specimen (specimen)](Specimen-LymphNodeSpecimenBlock01.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseLymphNode.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "LymphNodeMacroSLN1Size",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
  },
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
      "code" : "22634-0"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "44619-5",
      "display" : "Length of tissue core(s)"
    }],
    "text" : "SLN #1 Größe"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-02-06T08:30:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "valueString" : "12 x 8 x 6 mm, Patentblau-markiert",
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "68171009",
      "display" : "Axillary lymph node structure (body structure)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/LymphNodeSpecimenBlock01"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
  }]
}

```
