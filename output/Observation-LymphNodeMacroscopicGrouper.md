# Makroskopische Befunde Grouper SLN - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Makroskopische Befunde Grouper SLN**

## Example Observation: Makroskopische Befunde Grouper SLN

Profile: [MII PR Patho Macroscopic Grouperversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper)

**status**: Final

**category**: Laboratory

**code**: Pathology report gross observation Narrative

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-06 08:30:00+0100

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**bodySite**: Axillary lymph node structure (body structure)

**hasMember**: 

* [Observation Length of tissue core(s)](Observation-LymphNodeMacroSLN1Size.md)
* [Observation Length of tissue core(s)](Observation-LymphNodeMacroSLN2Size.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseLymphNode.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "LymphNodeMacroscopicGrouper",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2026.0.0"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "22634-0"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-02-06T08:30:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "68171009",
      "display" : "Axillary lymph node structure (body structure)"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/LymphNodeMacroSLN1Size"
  },
  {
    "reference" : "Observation/LymphNodeMacroSLN2Size"
  }],
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
  }]
}

```
