# Präparateradiogramm - Stanzbiopsie - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Präparateradiogramm - Stanzbiopsie**

## Example Observation: Präparateradiogramm - Stanzbiopsie

Profile: [MII PR Patho Findingversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)

**basedOn**: [ServiceRequest Breast Pathology biopsy report](ServiceRequest-CoreNeedleBiopsyReportRequest.md)

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Präparateradiogramm

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-01-17

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: Präparateradiogramm gesehen

**specimen**: [Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_105; status = available; type = Specimen from breast obtained by core needle biopsy (specimen); note = HG-Stanzen/Mamma, li., 5 Uhr, 5 cm von Mamille, US-gestützte Stanzbiopsie. 2 Stanzzylinder, zusammen 22 mm, mittelfest, grauweißlich, Bleistiftminenstärke.](Specimen-CoreNeedleBiopsySpecimenPart.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/Core-Needle-Biopsy' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseCoreNeedleBiopsy.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CoreNeedleBiopsySpecimenRadiography",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
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
  },
  {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "22637-3"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80865008",
      "display" : "Specimen mammography (procedure)"
    }],
    "text" : "Präparateradiogramm"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-01-17",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "52101004",
      "display" : "Present (qualifier value)"
    }],
    "text" : "Präparateradiogramm gesehen"
  },
  "specimen" : {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenPart"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseCoreNeedleBiopsy"
  }]
}

```
