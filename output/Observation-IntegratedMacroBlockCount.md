# Anzahl Paraffinblöcke (integriert) - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Anzahl Paraffinblöcke (integriert)**

## Example Observation: Anzahl Paraffinblöcke (integriert)

Profile: [MII PR Patho Finding](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding) version: 2026.0.0

**status**: Final

**category**: Laboratory, Pathology report gross observation Narrative

**code**: Anzahl Paraffinblöcke

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-06 08:30:00+0100

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: 6 Blöcke (Details: UCUM code{blocks} = '{blocks}')

**specimen**: [Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_300; status = available; type = Specimen from breast obtained by excision (specimen); note = BET-Exzisionspräparat Mamma links, unterer äußerer Quadrant, 5 Uhr, 50 mm von Mamille. 42 × 35 × 18 mm, 10 g. Haut anhängend, Drahthäkchen in situ. Lamellierung in 8 Scheiben à 5 mm. Schnittfläche: grau-weißlicher Herdbefund zentral in Scheibe III–V, ca. 18 mm.](Specimen-IntegratedBETSpecimenPart.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_Mamma_GH' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-IntegratedQRBreastResection.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IntegratedMacroBlockCount",
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
      "system" : "http://snomed.info/sct",
      "code" : "3100001000004109",
      "display" : "Number of paraffin embedded tissue blocks examined from excised specimen (observable entity)"
    }],
    "text" : "Anzahl Paraffinblöcke"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-02-06T08:30:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "valueQuantity" : {
    "value" : 6,
    "unit" : "Blöcke",
    "system" : "http://unitsofmeasure.org",
    "code" : "{blocks}"
  },
  "specimen" : {
    "reference" : "Specimen/IntegratedBETSpecimenPart"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/IntegratedQRBreastResection"
  }]
}

```
