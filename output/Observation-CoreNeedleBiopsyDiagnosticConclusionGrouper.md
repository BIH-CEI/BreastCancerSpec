# Diagnostic Conclusion Grouper - Stanzbiopsie - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diagnostic Conclusion Grouper - Stanzbiopsie**

## Example Observation: Diagnostic Conclusion Grouper - Stanzbiopsie

Profile: [MII PR Patho Diagnostic Conclusion Grouper](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper) version: 2026.0.0

**basedOn**: [ServiceRequest Breast Pathology biopsy report](ServiceRequest-CoreNeedleBiopsyReportRequest.md)

**status**: Final

**category**: Laboratory

**code**: Pathology report final diagnosis Narrative

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-01-17

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**hasMember**: 

* [Observation Histology and Behavior ICD-O-3 Cancer](Observation-CoreNeedleBiopsyHistologicalTypeICDO3.md)
* [Observation Histology type in Cancer specimen Narrative](Observation-CoreNeedleBiopsyMorphologyFreeText.md)
* [Observation Nottingham combined grade of primary malignant neoplasm of breast (observable entity)](Observation-CoreNeedleBiopsyNottinghamGrade.md)
* [Observation Histologic grade [Score] in Breast cancer specimen by Nottingham](Observation-CoreNeedleBiopsyNottinghamSummaryScore.md)
* [Observation Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain](Observation-CoreNeedleBiopsyERStatus.md)
* [Observation Cells.estrogen receptor/cells in Breast cancer specimen by Immune stain](Observation-CoreNeedleBiopsyERPercentage.md)
* [Observation Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain](Observation-CoreNeedleBiopsyPRStatus.md)
* [Observation Cells.progesterone receptor/cells in Breast cancer specimen by Immune stain](Observation-CoreNeedleBiopsyPRPercentage.md)
* [Observation Presence of receptor tyrosine-protein kinase erbB-2 in primary malignant neoplasm of breast by in situ hybridization](Observation-CoreNeedleBiopsyHER2ISH.md)
* [Observation Cells.Ki-67 nuclear Ag/cells in Breast cancer specimen by Immune stain](Observation-CoreNeedleBiopsyKi67.md)
* [Observation Screening interpretation (observable entity)](Observation-CoreNeedleBiopsyInterpretation.md)
* [Observation Presence of microcalcification in excised breast specimen (observable entity)](Observation-CoreNeedleBiopsyMicrocalcification.md)
* [Observation Specimen mammography (procedure)](Observation-CoreNeedleBiopsySpecimenRadiography.md)
* [Observation Microcalcification, calcified structure (morphologic abnormality)](Observation-CoreNeedleBiopsyMicrocalcificationCorrelation.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/Core-Needle-Biopsy' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseCoreNeedleBiopsy.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CoreNeedleBiopsyDiagnosticConclusionGrouper",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2026.0.0"]
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
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "22637-3"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-01-17",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "hasMember" : [{
    "reference" : "Observation/CoreNeedleBiopsyHistologicalTypeICDO3"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyMorphologyFreeText"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyNottinghamGrade"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyNottinghamSummaryScore"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyERStatus"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyERPercentage"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyPRStatus"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyPRPercentage"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyHER2ISH"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyKi67"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyInterpretation"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyMicrocalcification"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsySpecimenRadiography"
  },
  {
    "reference" : "Observation/CoreNeedleBiopsyMicrocalcificationCorrelation"
  }],
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseCoreNeedleBiopsy"
  }]
}

```
