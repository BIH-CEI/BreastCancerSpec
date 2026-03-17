# Anhängendes Gewebe - BET - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Anhängendes Gewebe - BET**

## Example Observation: Anhängendes Gewebe - BET

Profile: [MII PR Patho Findingversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)

**basedOn**: [ServiceRequest Pathology synoptic report](ServiceRequest-BreastResectionReportRequest.md)

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Material/anhängendes Gewebe

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-10

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: Haut

**specimen**: [Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_210; status = available; type = Specimen from breast obtained by excision (specimen); note = BET-Exzisionspräparat Mamma links, unterer äußerer Quadrant, 5 Uhr, 50 mm von Mamille. Mit Haut, Drahthäkchen in situ. 42 x 35 x 18 mm, 10 g. Lamellierung in 8 Scheiben à 5 mm. Schnittfläche: grau-weißlich, derber Herdbefund zentral in Scheibe III–V, ca. 18 mm.](Specimen-BreastResectionSpecimenPart.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP-Mamma' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-QuestionnaireResponseBreastResection.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BreastResectionAttachedTissue",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
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
      "code" : "85298-8",
      "display" : "Body structure included in specimen [Anatomy] in Specimen"
    }],
    "text" : "Material/anhängendes Gewebe"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-02-10",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "39937001",
      "display" : "Skin structure (body structure)"
    }],
    "text" : "Haut"
  },
  "specimen" : {
    "reference" : "Specimen/BreastResectionSpecimenPart"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/QuestionnaireResponseBreastResection"
  }]
}

```
