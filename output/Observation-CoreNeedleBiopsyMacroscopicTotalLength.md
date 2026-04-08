# Gesamtlänge Stanzzylinder - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gesamtlänge Stanzzylinder**

## Example Observation: Gesamtlänge Stanzzylinder

Profile: [MII PR Patho Finding](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding) version: 2026.0.0

**status**: Final

**category**: Laboratory, Pathology report gross observation Narrative

**code**: Gesamtlänge der Stanzzylinder

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-01-16 08:30:00+0100

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: 22 mm (Details: UCUM codemm = 'mm')

**bodySite**: Structure of lower outer quadrant of left breast (body structure)

**specimen**: [Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_105; status = available; type = Specimen from breast obtained by core needle biopsy (specimen); note = HG-Stanzen/Mamma, li., 5 Uhr, 5 cm von Mamille, US-gestützte Stanzbiopsie. 2 Stanzzylinder, zusammen 22 mm, mittelfest, grauweißlich, Bleistiftminenstärke.](Specimen-CoreNeedleBiopsySpecimenPart.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/Core-Needle-Biopsy' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseCoreNeedleBiopsy.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CoreNeedleBiopsyMacroscopicTotalLength",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
  },
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
      "code" : "22634-0"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "33728-7",
      "display" : "Size.maximum dimension in Tumor"
    }],
    "text" : "Gesamtlänge der Stanzzylinder"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-01-16T08:30:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "valueQuantity" : {
    "value" : 22,
    "unit" : "mm",
    "system" : "http://unitsofmeasure.org",
    "code" : "mm"
  },
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "110502005",
      "display" : "Structure of lower outer quadrant of left breast (body structure)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/CoreNeedleBiopsySpecimenPart"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseCoreNeedleBiopsy"
  }]
}

```
