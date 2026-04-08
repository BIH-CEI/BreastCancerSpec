# Diagnostic Conclusion Grouper - Integrated BET + SLN - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diagnostic Conclusion Grouper - Integrated BET + SLN**

## Example Observation: Diagnostic Conclusion Grouper - Integrated BET + SLN

Profile: [MII PR Patho Diagnostic Conclusion Grouper](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper) version: 2026.0.0

**basedOn**: [ServiceRequest Pathology synoptic report](ServiceRequest-IntegratedReportRequest.md)

**status**: Final

**category**: Laboratory

**code**: Pathology report final diagnosis Narrative

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-10

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**hasMember**: 

* [Observation Carcinoma in situ of breast (disorder)](Observation-IntegratedNonInvasiveLesion.md)
* [Observation Malignant tumor of breast (disorder)](Observation-IntegratedInvasiveCarcinoma.md)
* [Observation Surgery procedure](Observation-IntegratedOperativeProcedure.md)
* [Observation Specimen type](Observation-IntegratedMaterialType.md)
* [Observation Specimen laterality (observable entity)](Observation-IntegratedLaterality.md)
* [Observation Body structure included in specimen [Anatomy] in Specimen](Observation-IntegratedAttachedTissue.md)
* [Observation Qualitative distribution of primary malignant neoplasm of breast in excised breast specimen (observable entity)](Observation-IntegratedFocality.md)
* [Observation Inv comp size max dim BT](Observation-IntegratedMaxDiameterInvasive.md)
* [Observation Size.maximum dimension in Tumor](Observation-IntegratedMaxOverallDiameter.md)
* [Observation Histo type BT](Observation-IntegratedHistologicalType.md)
* [Observation Histology type in Cancer specimen Narrative](Observation-IntegratedMorphologyFreeText.md)
* [Observation Histologic grade [Score] in Breast cancer specimen by Nottingham](Observation-IntegratedNottinghamGrade.md)
* [Observation Glandular differentiation [Score] in Breast cancer specimen by Nottingham](Observation-IntegratedTubuleScore.md)
* [Observation Nuclear pleomorphism in Breast tumor by Nottingham](Observation-IntegratedNuclearPleomorphism.md)
* [Observation Number of mitoses per 10 high power fields (observable entity)](Observation-IntegratedMitosisCount.md)
* [Observation Mitotic rate [Score] in Breast cancer specimen by Nottingham](Observation-IntegratedMitoticRateScore.md)
* [Observation Nottingham total score of primary malignant neoplasm of breast (observable entity)](Observation-IntegratedElstonEllisScore.md)
* [Observation DCIS intraduct ext Br ca spec Ql Micro](Observation-IntegratedAssociatedDCIS.md)
* [Observation Nuclear grade of ductal carcinoma in situ of breast (observable entity)](Observation-IntegratedDCISGrade.md)
* [Observation Growth pattern of DCIS [Type] in Breast cancer specimen by Light microscopy](Observation-IntegratedDCISArchitecture.md)
* [Observation DCIS necrosis [Type] in Breast cancer specimen by Light microscopy](Observation-IntegratedDCISNecrosis.md)
* [Observation Adjacent structure invaded by tumor [Anatomy] in Breast cancer specimen by Light microscopy](Observation-IntegratedTumorExtent.md)
* [Observation Margin involved BT](Observation-IntegratedMarginStatusInvasive.md)
* [Observation IC uninv marg closest BT](Observation-IntegratedClosestMargin.md)
* [Observation IC uninv marg dist closest BT](Observation-IntegratedMinDistanceInvasive.md)
* [Observation Surgical margin DCIS involvement [Presence] in Breast cancer specimen by Light microscopy](Observation-IntegratedMarginStatusNonInvasive.md)
* [Observation DCIS.uninv marg dist.closest BT](Observation-IntegratedMinDistanceNonInvasive.md)
* [Observation Lymph-vascular invasion Ca spec](Observation-IntegratedLVI.md)
* [Observation Presence of microcalcification in excised breast specimen (observable entity)](Observation-IntegratedMicrocalcification.md)
* [Observation Estrogen receptor [Interpretation] in Tissue](Observation-IntegratedERStatus.md)
* [Observation Cells.estrogen receptor/cells in Breast cancer specimen by Immune stain](Observation-IntegratedERPercentage.md)
* [Observation Estrogen receptor fluorescence intensity [Type] in Breast cancer specimen by Immune stain](Observation-IntegratedERIntensity.md)
* [Observation Progesterone receptor [Interpretation] in Tissue](Observation-IntegratedPRStatus.md)
* [Observation Cells.progesterone receptor/cells in Breast cancer specimen by Immune stain](Observation-IntegratedPRPercentage.md)
* [Observation Progesterone receptor fluorescence intensity [Type] in Breast cancer specimen by Immune stain](Observation-IntegratedPRIntensity.md)
* [Observation HER2 [Presence] in Breast cancer specimen by Immune stain](Observation-IntegratedHER2IHC.md)
* [Observation ERBB2 gene duplication [Presence] in Breast cancer specimen by FISH](Observation-IntegratedHER2ISH.md)
* [Observation HER2 [Interpretation] in Tissue](Observation-IntegratedHER2Overall.md)
* [Observation Cells.Ki-67 nuclear Ag/cells in Breast cancer specimen by Immune stain](Observation-IntegratedKi67.md)
* [Observation pT category (observable entity)](Observation-IntegratedPT.md)
* [Observation Pathology report comments [Interpretation] Narrative](Observation-IntegratedBETComment.md)
* [Observation Surgery procedure for regional nodes at facility.YYY Cancer](Observation-IntegratedLymphNodeProcedure.md)
* [Observation Anatomic part Laterality](Observation-IntegratedLymphNodeLaterality.md)
* [Observation Regional lymph nodes examined [#] Specimen](Observation-IntegratedNonSLNExamined.md)
* [Observation Regional lymph nodes positive [#] Specimen](Observation-IntegratedNonSLNPositive.md)
* [Observation Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy](Observation-IntegratedSLNExamined.md)
* [Observation Number of sentinel lymph nodes containing metastatic neoplasm in excised specimen (observable entity)](Observation-IntegratedSLNPositive.md)
* [Observation Lymph nodes examined [#] in Cancer specimen by Light microscopy](Observation-IntegratedTotalExamined.md)
* [Observation Lymph nodes with metastasis [#] in Cancer specimen](Observation-IntegratedTotalPositive.md)
* [Observation Lymph nodes with macrometastases [#] in Cancer specimen by Light microscopy](Observation-IntegratedMacroMetCount.md)
* [Observation Lymph nodes with micrometastases [#] in Cancer specimen by Light microscopy](Observation-IntegratedMicroMetCount.md)
* [Observation Lymph nodes with isolated tumor cells [#] in Cancer specimen by Light microscopy](Observation-IntegratedITCCount.md)
* [Observation Lymph node metastatic deposit.max dimension [Length] in Cancer specimen by Light microscopy](Observation-IntegratedLargestMetSize.md)
* [Observation Extranodal extension of carcinoma [Presence] in Cancer specimen by Light microscopy](Observation-IntegratedExtranodalExtension.md)
* [Observation pN category (observable entity)](Observation-IntegratedPN.md)
* [Observation Pathology report comments [Interpretation] Narrative](Observation-IntegratedSLNComment.md)

**derivedFrom**: 

* [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_Mamma_GH' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-IntegratedQRBreastResection.md)
* [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-IntegratedQRLymphNode.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IntegratedDiagnosticConclusionGrouper",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2026.0.0"]
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
    "reference" : "Observation/IntegratedNonInvasiveLesion"
  },
  {
    "reference" : "Observation/IntegratedInvasiveCarcinoma"
  },
  {
    "reference" : "Observation/IntegratedOperativeProcedure"
  },
  {
    "reference" : "Observation/IntegratedMaterialType"
  },
  {
    "reference" : "Observation/IntegratedLaterality"
  },
  {
    "reference" : "Observation/IntegratedAttachedTissue"
  },
  {
    "reference" : "Observation/IntegratedFocality"
  },
  {
    "reference" : "Observation/IntegratedMaxDiameterInvasive"
  },
  {
    "reference" : "Observation/IntegratedMaxOverallDiameter"
  },
  {
    "reference" : "Observation/IntegratedHistologicalType"
  },
  {
    "reference" : "Observation/IntegratedMorphologyFreeText"
  },
  {
    "reference" : "Observation/IntegratedNottinghamGrade"
  },
  {
    "reference" : "Observation/IntegratedTubuleScore"
  },
  {
    "reference" : "Observation/IntegratedNuclearPleomorphism"
  },
  {
    "reference" : "Observation/IntegratedMitosisCount"
  },
  {
    "reference" : "Observation/IntegratedMitoticRateScore"
  },
  {
    "reference" : "Observation/IntegratedElstonEllisScore"
  },
  {
    "reference" : "Observation/IntegratedAssociatedDCIS"
  },
  {
    "reference" : "Observation/IntegratedDCISGrade"
  },
  {
    "reference" : "Observation/IntegratedDCISArchitecture"
  },
  {
    "reference" : "Observation/IntegratedDCISNecrosis"
  },
  {
    "reference" : "Observation/IntegratedTumorExtent"
  },
  {
    "reference" : "Observation/IntegratedMarginStatusInvasive"
  },
  {
    "reference" : "Observation/IntegratedClosestMargin"
  },
  {
    "reference" : "Observation/IntegratedMinDistanceInvasive"
  },
  {
    "reference" : "Observation/IntegratedMarginStatusNonInvasive"
  },
  {
    "reference" : "Observation/IntegratedMinDistanceNonInvasive"
  },
  {
    "reference" : "Observation/IntegratedLVI"
  },
  {
    "reference" : "Observation/IntegratedMicrocalcification"
  },
  {
    "reference" : "Observation/IntegratedERStatus"
  },
  {
    "reference" : "Observation/IntegratedERPercentage"
  },
  {
    "reference" : "Observation/IntegratedERIntensity"
  },
  {
    "reference" : "Observation/IntegratedPRStatus"
  },
  {
    "reference" : "Observation/IntegratedPRPercentage"
  },
  {
    "reference" : "Observation/IntegratedPRIntensity"
  },
  {
    "reference" : "Observation/IntegratedHER2IHC"
  },
  {
    "reference" : "Observation/IntegratedHER2ISH"
  },
  {
    "reference" : "Observation/IntegratedHER2Overall"
  },
  {
    "reference" : "Observation/IntegratedKi67"
  },
  {
    "reference" : "Observation/IntegratedPT"
  },
  {
    "reference" : "Observation/IntegratedBETComment"
  },
  {
    "reference" : "Observation/IntegratedLymphNodeProcedure"
  },
  {
    "reference" : "Observation/IntegratedLymphNodeLaterality"
  },
  {
    "reference" : "Observation/IntegratedNonSLNExamined"
  },
  {
    "reference" : "Observation/IntegratedNonSLNPositive"
  },
  {
    "reference" : "Observation/IntegratedSLNExamined"
  },
  {
    "reference" : "Observation/IntegratedSLNPositive"
  },
  {
    "reference" : "Observation/IntegratedTotalExamined"
  },
  {
    "reference" : "Observation/IntegratedTotalPositive"
  },
  {
    "reference" : "Observation/IntegratedMacroMetCount"
  },
  {
    "reference" : "Observation/IntegratedMicroMetCount"
  },
  {
    "reference" : "Observation/IntegratedITCCount"
  },
  {
    "reference" : "Observation/IntegratedLargestMetSize"
  },
  {
    "reference" : "Observation/IntegratedExtranodalExtension"
  },
  {
    "reference" : "Observation/IntegratedPN"
  },
  {
    "reference" : "Observation/IntegratedSLNComment"
  }],
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/IntegratedQRBreastResection"
  },
  {
    "reference" : "QuestionnaireResponse/IntegratedQRLymphNode"
  }]
}

```
