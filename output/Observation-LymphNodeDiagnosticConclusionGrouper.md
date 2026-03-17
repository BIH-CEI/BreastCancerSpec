# Diagnostic Conclusion Grouper - SLN Axilla - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diagnostic Conclusion Grouper - SLN Axilla**

## Example Observation: Diagnostic Conclusion Grouper - SLN Axilla

Profile: [MII PR Patho Diagnostic Conclusion Grouperversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper)

**basedOn**: [ServiceRequest Pathology synoptic report](ServiceRequest-LymphNodeReportRequest.md)

**status**: Final

**category**: Laboratory

**code**: Pathology report final diagnosis Narrative

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-10

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**hasMember**: 

* [Observation Surgery procedure for regional nodes at facility.YYY Cancer](Observation-LymphNodeProcedure.md)
* [Observation Anatomic part Laterality](Observation-LymphNodeLaterality.md)
* [Observation Regional lymph nodes examined [#] Specimen](Observation-LymphNodeNonSLNExamined.md)
* [Observation Regional lymph nodes positive [#] Specimen](Observation-LymphNodeNonSLNPositive.md)
* [Observation Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy](Observation-LymphNodeSLNExamined.md)
* [Observation Number of sentinel lymph nodes containing metastatic neoplasm in excised specimen (observable entity)](Observation-LymphNodeSLNPositive.md)
* [Observation Lymph nodes examined [#] in Cancer specimen by Light microscopy](Observation-LymphNodeTotalExamined.md)
* [Observation Lymph nodes with metastasis [#] in Cancer specimen](Observation-LymphNodeTotalPositive.md)
* [Observation Lymph nodes with macrometastases [#] in Cancer specimen by Light microscopy](Observation-LymphNodeMacroMetCount.md)
* [Observation Lymph nodes with micrometastases [#] in Cancer specimen by Light microscopy](Observation-LymphNodeMicroMetCount.md)
* [Observation Lymph nodes with isolated tumor cells [#] in Cancer specimen by Light microscopy](Observation-LymphNodeITCCount.md)
* [Observation Lymph node metastatic deposit.max dimension [Length] in Cancer specimen by Light microscopy](Observation-LymphNodeLargestMetSize.md)
* [Observation Extranodal extension of carcinoma [Presence] in Cancer specimen by Light microscopy](Observation-LymphNodeExtranodalExtension.md)
* [Observation Regional lymph nodes.clinical [Class] Cancer](Observation-LymphNodePN.md)
* [Observation Pathology report comments [Interpretation] Narrative](Observation-LymphNodeComment.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseLymphNode.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "LymphNodeDiagnosticConclusionGrouper",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2026.0.0"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/LymphNodeReportRequest"
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
    "reference" : "Observation/LymphNodeProcedure"
  },
  {
    "reference" : "Observation/LymphNodeLaterality"
  },
  {
    "reference" : "Observation/LymphNodeNonSLNExamined"
  },
  {
    "reference" : "Observation/LymphNodeNonSLNPositive"
  },
  {
    "reference" : "Observation/LymphNodeSLNExamined"
  },
  {
    "reference" : "Observation/LymphNodeSLNPositive"
  },
  {
    "reference" : "Observation/LymphNodeTotalExamined"
  },
  {
    "reference" : "Observation/LymphNodeTotalPositive"
  },
  {
    "reference" : "Observation/LymphNodeMacroMetCount"
  },
  {
    "reference" : "Observation/LymphNodeMicroMetCount"
  },
  {
    "reference" : "Observation/LymphNodeITCCount"
  },
  {
    "reference" : "Observation/LymphNodeLargestMetSize"
  },
  {
    "reference" : "Observation/LymphNodeExtranodalExtension"
  },
  {
    "reference" : "Observation/LymphNodePN"
  },
  {
    "reference" : "Observation/LymphNodeComment"
  }],
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
  }]
}

```
