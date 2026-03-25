# Kommentar - BET - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kommentar - BET**

## Example Observation: Kommentar - BET

Profile: [MII PR Patho Findingversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)

**basedOn**: [ServiceRequest Pathology synoptic report](ServiceRequest-IntegratedReportRequest.md)

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Kommentar

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-10

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: Korrelation mit dem Vorbefund der Stanzbiopsie (E_25_105): Übereinstimmende Histologie (invasives Mammakarzinom NST, G2). Biomarkerprofil bestätigt: ER+, PR+, HER2-, Luminal-A-like. Empfehlung: Tumorkonferenz zur weiteren Therapieplanung.

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_Mamma_GH' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-IntegratedQRBreastResection.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IntegratedBETComment",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
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
  },
  {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "22637-3"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "22638-1",
      "display" : "Pathology report comments [Interpretation] Narrative"
    }],
    "text" : "Kommentar"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-02-10",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "valueString" : "Korrelation mit dem Vorbefund der Stanzbiopsie (E_25_105): Übereinstimmende Histologie (invasives Mammakarzinom NST, G2). Biomarkerprofil bestätigt: ER+, PR+, HER2-, Luminal-A-like. Empfehlung: Tumorkonferenz zur weiteren Therapieplanung.",
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/IntegratedQRBreastResection"
  }]
}

```
