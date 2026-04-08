# Makroskopische Befunde Grouper BET - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Makroskopische Befunde Grouper BET**

## Example Observation: Makroskopische Befunde Grouper BET

Profile: [MII PR Patho Macroscopic Grouper](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper) version: 2026.0.0

**status**: Final

**category**: Laboratory

**code**: Pathology report gross observation Narrative

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-06 08:30:00+0100

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**bodySite**: Breast structure (body structure)

**hasMember**: 

* [Observation Specimen size.maximum dimension in Breast tumor](Observation-BreastResectionMacroLength.md)
* [Observation Specimen size additional dimension 1 in Breast tumor](Observation-BreastResectionMacroWidth.md)
* [Observation Specimen size additional dimension 2 in Breast tumor](Observation-BreastResectionMacroDepth.md)
* [Observation Specimen wt Tiss Qn](Observation-BreastResectionMacroWeight.md)
* [Observation Quadrant Breast](Observation-BreastResectionMacroQuadrant.md)
* [Observation Radial position in breast [Angle] in Breast cancer specimen](Observation-BreastResectionMacroClock.md)
* [Observation Distance of primary malignant neoplasm of breast to nipple in excised breast specimen (observable entity)](Observation-BreastResectionMacroDistanceNipple.md)
* [Observation Number of paraffin embedded tissue blocks examined from excised specimen (observable entity)](Observation-BreastResectionMacroBlockCount.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseBreastResection.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BreastResectionMacroscopicGrouper",
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
      "code" : "76752008",
      "display" : "Breast structure (body structure)"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/BreastResectionMacroLength"
  },
  {
    "reference" : "Observation/BreastResectionMacroWidth"
  },
  {
    "reference" : "Observation/BreastResectionMacroDepth"
  },
  {
    "reference" : "Observation/BreastResectionMacroWeight"
  },
  {
    "reference" : "Observation/BreastResectionMacroQuadrant"
  },
  {
    "reference" : "Observation/BreastResectionMacroClock"
  },
  {
    "reference" : "Observation/BreastResectionMacroDistanceNipple"
  },
  {
    "reference" : "Observation/BreastResectionMacroBlockCount"
  }],
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseBreastResection"
  }]
}

```
