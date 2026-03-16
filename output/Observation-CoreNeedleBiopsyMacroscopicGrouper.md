# Makroskopische Befunde Grouper Stanzbiopsie - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Makroskopische Befunde Grouper Stanzbiopsie**

## Example Observation: Makroskopische Befunde Grouper Stanzbiopsie

Profile: [MII PR Patho Macroscopic Grouperversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper)

**status**: Final

**category**: Laboratory

**code**: Pathology report gross observation Narrative

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-01-16 08:30:00+0100

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**bodySite**: Structure of lower outer quadrant of left breast (body structure)

**hasMember**: 

* [Observation Size.maximum dimension in Tumor](Observation-CoreNeedleBiopsyMacroscopicTotalLength.md)
* [Observation Quantity (attribute)](Observation-CoreNeedleBiopsyMacroscopicCylinderCount.md)
* [Observation Quantity (attribute)](Observation-CoreNeedleBiopsyMacroscopicBlockCount.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/Core-Needle-Biopsy' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseCoreNeedleBiopsy.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CoreNeedleBiopsyMacroscopicGrouper",
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
  "effectiveDateTime" : "2025-01-16T08:30:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "110502005",
      "display" : "Structure of lower outer quadrant of left breast (body structure)"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/CoreNeedleBiopsyMacroscopicTotalLength"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyMacroscopicCylinderCount"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyMacroscopicBlockCount"
  }],
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseCoreNeedleBiopsy"
  }]
}

```
