# Makroskopische Befunde Grouper (integriert) - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Makroskopische Befunde Grouper (integriert)**

## Example Observation: Makroskopische Befunde Grouper (integriert)

Profile: [MII PR Patho Macroscopic Grouper](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper) version: 2026.0.0

**status**: Final

**category**: Laboratory

**code**: Pathology report gross observation Narrative

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-06 08:30:00+0100

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**hasMember**: 

* [Observation Specimen size.maximum dimension in Breast tumor](Observation-IntegratedMacroLength.md)
* [Observation Specimen size additional dimension 1 in Breast tumor](Observation-IntegratedMacroWidth.md)
* [Observation Specimen size additional dimension 2 in Breast tumor](Observation-IntegratedMacroDepth.md)
* [Observation Specimen wt Tiss Qn](Observation-IntegratedMacroWeight.md)
* [Observation Quadrant Breast](Observation-IntegratedMacroQuadrant.md)
* [Observation Radial position in breast [Angle] in Breast cancer specimen](Observation-IntegratedMacroClock.md)
* [Observation Distance of primary malignant neoplasm of breast to nipple in excised breast specimen (observable entity)](Observation-IntegratedMacroDistanceNipple.md)
* [Observation Number of paraffin embedded tissue blocks examined from excised specimen (observable entity)](Observation-IntegratedMacroBlockCount.md)
* [Observation Length of tissue core(s)](Observation-IntegratedMacroSLN1Size.md)
* [Observation Length of tissue core(s)](Observation-IntegratedMacroSLN2Size.md)

**derivedFrom**: 

* [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_Mamma_GH' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-IntegratedQRBreastResection.md)
* [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-IntegratedQRLymphNode.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IntegratedMacroscopicGrouper",
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
  "hasMember" : [{
    "reference" : "Observation/IntegratedMacroLength"
  },
  {
    "reference" : "Observation/IntegratedMacroWidth"
  },
  {
    "reference" : "Observation/IntegratedMacroDepth"
  },
  {
    "reference" : "Observation/IntegratedMacroWeight"
  },
  {
    "reference" : "Observation/IntegratedMacroQuadrant"
  },
  {
    "reference" : "Observation/IntegratedMacroClock"
  },
  {
    "reference" : "Observation/IntegratedMacroDistanceNipple"
  },
  {
    "reference" : "Observation/IntegratedMacroBlockCount"
  },
  {
    "reference" : "Observation/IntegratedMacroSLN1Size"
  },
  {
    "reference" : "Observation/IntegratedMacroSLN2Size"
  }],
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/IntegratedQRBreastResection"
  },
  {
    "reference" : "QuestionnaireResponse/IntegratedQRLymphNode"
  }]
}

```
