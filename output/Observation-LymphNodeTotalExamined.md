# Gesamtzahl untersuchter LK - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gesamtzahl untersuchter LK**

## Example Observation: Gesamtzahl untersuchter LK

Profile: [MII PR Patho Findingversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)

**basedOn**: [ServiceRequest Pathology synoptic report](ServiceRequest-LymphNodeReportRequest.md)

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Gesamtzahl untersuchter Lymphknoten

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-10

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: 2 {count} (Details: UCUM code{count} = '{count}')

**specimen**: [Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.](Specimen-LymphNodeSpecimenPart.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseLymphNode.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "LymphNodeTotalExamined",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
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
      "code" : "92833-3",
      "display" : "Lymph nodes examined [#] in Cancer specimen by Light microscopy"
    }],
    "text" : "Gesamtzahl untersuchter Lymphknoten"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-02-10",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "valueQuantity" : {
    "value" : 2,
    "unit" : "{count}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{count}"
  },
  "specimen" : {
    "reference" : "Specimen/LymphNodeSpecimenPart"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
  }]
}

```
