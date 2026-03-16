# Diagnostic Conclusion Grouper - BET Mamma - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diagnostic Conclusion Grouper - BET Mamma**

## Example Observation: Diagnostic Conclusion Grouper - BET Mamma

Profile: [MII PR Patho Diagnostic Conclusion Grouperversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper)

**basedOn**: [ServiceRequest Pathology synoptic report](ServiceRequest-BreastResectionReportRequest.md)

**status**: Final

**category**: Laboratory

**code**: Pathology report final diagnosis Narrative

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-10

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**hasMember**: 

* [Observation Carcinoma in situ of breast (disorder)](Observation-BreastResectionNonInvasiveLesion.md)
* [Observation Malignant tumor of breast (disorder)](Observation-BreastResectionInvasiveCarcinoma.md)
* [Observation Surgery procedure](Observation-BreastResectionOperativeProcedure.md)
* [Observation Specimen type](Observation-BreastResectionMaterialType.md)
* [Observation Specimen laterality (observable entity)](Observation-BreastResectionLaterality.md)
* [Observation Body structure included in specimen [Anatomy] in Specimen](Observation-BreastResectionAttachedTissue.md)
* [Observation Qualitative distribution of primary malignant neoplasm of breast in excised breast specimen (observable entity)](Observation-BreastResectionFocality.md)
* [Observation Inv comp size max dim BT](Observation-BreastResectionMaxDiameterInvasive.md)
* [Observation Size.maximum dimension in Tumor](Observation-BreastResectionMaxOverallDiameter.md)
* [Observation Histo type BT](Observation-BreastResectionHistologicalType.md)
* [Observation Histology type in Cancer specimen Narrative](Observation-BreastResectionMorphologyFreeText.md)
* [Observation Histologic grade [Score] in Breast cancer specimen by Nottingham](Observation-BreastResectionNottinghamGrade.md)
* [Observation Glandular differentiation [Score] in Breast cancer specimen by Nottingham](Observation-BreastResectionTubuleScore.md)
* [Observation Nuclear pleomorphism in Breast tumor by Nottingham](Observation-BreastResectionNuclearPleomorphism.md)
* [Observation Number of mitoses per 10 high power fields (observable entity)](Observation-BreastResectionMitosisCount.md)
* [Observation Mitotic rate [Score] in Breast cancer specimen by Nottingham](Observation-BreastResectionMitoticRateScore.md)
* [Observation Nottingham total score of primary malignant neoplasm of breast (observable entity)](Observation-BreastResectionElstonEllisScore.md)
* [Observation DCIS intraduct ext Br ca spec Ql Micro](Observation-BreastResectionAssociatedDCIS.md)
* [Observation Nuclear grade of ductal carcinoma in situ of breast (observable entity)](Observation-BreastResectionDCISGrade.md)
* [Observation Growth pattern of DCIS [Type] in Breast cancer specimen by Light microscopy](Observation-BreastResectionDCISArchitecture.md)
* [Observation DCIS necrosis [Type] in Breast cancer specimen by Light microscopy](Observation-BreastResectionDCISNecrosis.md)
* [Observation Adjacent structure invaded by tumor [Anatomy] in Breast cancer specimen by Light microscopy](Observation-BreastResectionTumorExtent.md)
* [Observation Margin involved BT](Observation-BreastResectionMarginStatusInvasive.md)
* [Observation IC uninv marg closest BT](Observation-BreastResectionClosestMargin.md)
* [Observation IC uninv marg dist closest BT](Observation-BreastResectionMinDistanceInvasive.md)
* [Observation Surgical margin DCIS involvement [Presence] in Breast cancer specimen by Light microscopy](Observation-BreastResectionMarginStatusNonInvasive.md)
* [Observation DCIS.uninv marg dist.closest BT](Observation-BreastResectionMinDistanceNonInvasive.md)
* [Observation Lymph-vascular invasion Ca spec](Observation-BreastResectionLVI.md)
* [Observation Microcalcifications in Breast tumor](Observation-BreastResectionMicrocalcification.md)
* [Observation Estrogen receptor [Interpretation] in Tissue](Observation-BreastResectionERStatus.md)
* [Observation Cells.estrogen receptor/cells in Breast cancer specimen by Immune stain](Observation-BreastResectionERPercentage.md)
* [Observation Estrogen receptor fluorescence intensity [Type] in Breast cancer specimen by Immune stain](Observation-BreastResectionERIntensity.md)
* [Observation Progesterone receptor [Interpretation] in Tissue](Observation-BreastResectionPRStatus.md)
* [Observation Cells.progesterone receptor/cells in Breast cancer specimen by Immune stain](Observation-BreastResectionPRPercentage.md)
* [Observation Progesterone receptor fluorescence intensity [Type] in Breast cancer specimen by Immune stain](Observation-BreastResectionPRIntensity.md)
* [Observation HER2 [Presence] in Breast cancer specimen by Immune stain](Observation-BreastResectionHER2IHC.md)
* [Observation ERBB2 gene duplication [Presence] in Breast cancer specimen by FISH](Observation-BreastResectionHER2ISH.md)
* [Observation HER2 [Interpretation] in Tissue](Observation-BreastResectionHER2Overall.md)
* [Observation Cells.Ki-67 nuclear Ag/cells in Breast cancer specimen by Immune stain](Observation-BreastResectionKi67.md)
* [Observation Primary tumor.pathology Cancer](Observation-BreastResectionPT.md)
* [Observation Pathology report comments [Interpretation] Narrative](Observation-BreastResectionComment.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseBreastResection.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BreastResectionDiagnosticConclusionGrouper",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2026.0.0"]
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
  "effectiveDateTime" : "2025-02-10",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "hasMember" : [{
    "reference" : "Observation/BreastResectionNonInvasiveLesion"
  },
  {
    "reference" : "Observation/BreastResectionInvasiveCarcinoma"
  },
  {
    "reference" : "Observation/BreastResectionOperativeProcedure"
  },
  {
    "reference" : "Observation/BreastResectionMaterialType"
  },
  {
    "reference" : "Observation/BreastResectionLaterality"
  },
  {
    "reference" : "Observation/BreastResectionAttachedTissue"
  },
  {
    "reference" : "Observation/BreastResectionFocality"
  },
  {
    "reference" : "Observation/BreastResectionMaxDiameterInvasive"
  },
  {
    "reference" : "Observation/BreastResectionMaxOverallDiameter"
  },
  {
    "reference" : "Observation/BreastResectionHistologicalType"
  },
  {
    "reference" : "Observation/BreastResectionMorphologyFreeText"
  },
  {
    "reference" : "Observation/BreastResectionNottinghamGrade"
  },
  {
    "reference" : "Observation/BreastResectionTubuleScore"
  },
  {
    "reference" : "Observation/BreastResectionNuclearPleomorphism"
  },
  {
    "reference" : "Observation/BreastResectionMitosisCount"
  },
  {
    "reference" : "Observation/BreastResectionMitoticRateScore"
  },
  {
    "reference" : "Observation/BreastResectionElstonEllisScore"
  },
  {
    "reference" : "Observation/BreastResectionAssociatedDCIS"
  },
  {
    "reference" : "Observation/BreastResectionDCISGrade"
  },
  {
    "reference" : "Observation/BreastResectionDCISArchitecture"
  },
  {
    "reference" : "Observation/BreastResectionDCISNecrosis"
  },
  {
    "reference" : "Observation/BreastResectionTumorExtent"
  },
  {
    "reference" : "Observation/BreastResectionMarginStatusInvasive"
  },
  {
    "reference" : "Observation/BreastResectionClosestMargin"
  },
  {
    "reference" : "Observation/BreastResectionMinDistanceInvasive"
  },
  {
    "reference" : "Observation/BreastResectionMarginStatusNonInvasive"
  },
  {
    "reference" : "Observation/BreastResectionMinDistanceNonInvasive"
  },
  {
    "reference" : "Observation/BreastResectionLVI"
  },
  {
    "reference" : "Observation/BreastResectionMicrocalcification"
  },
  {
    "reference" : "Observation/BreastResectionERStatus"
  },
  {
    "reference" : "Observation/BreastResectionERPercentage"
  },
  {
    "reference" : "Observation/BreastResectionERIntensity"
  },
  {
    "reference" : "Observation/BreastResectionPRStatus"
  },
  {
    "reference" : "Observation/BreastResectionPRPercentage"
  },
  {
    "reference" : "Observation/BreastResectionPRIntensity"
  },
  {
    "reference" : "Observation/BreastResectionHER2IHC"
  },
  {
    "reference" : "Observation/BreastResectionHER2ISH"
  },
  {
    "reference" : "Observation/BreastResectionHER2Overall"
  },
  {
    "reference" : "Observation/BreastResectionKi67"
  },
  {
    "reference" : "Observation/BreastResectionPT"
  },
  {
    "reference" : "Observation/BreastResectionComment"
  }],
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseBreastResection"
  }]
}

```
