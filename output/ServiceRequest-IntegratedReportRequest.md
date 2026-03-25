# BET + SLN Anforderung (integriert) - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BET + SLN Anforderung (integriert)**

## Example ServiceRequest: BET + SLN Anforderung (integriert)

Profile: [MII PR Patho Service Requestversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request)

**identifier**: Placer Identifier/PATH-RPT-2025-300

**status**: Completed

**intent**: Order

**category**: Pathology consultation, comprehensive, records and specimen with report (procedure)

**code**: Pathology synoptic report

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**encounter**: [Encounter: identifier = http://example.hospital.de/encounters#E_25_300; status = finished; class = IMP (IMP)](Encounter-IntegratedEncounter.md)

**requester**: [Practitioner Thomas Richter ](Practitioner-BreastSurgeonPractitioner.md)

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**reasonCode**: Malignant neoplasm of breast (disorder)

**supportingInfo**: 

* [Condition Bösartige Neubildung: Unterer äußerer Quadrant der Brustdrüse](Condition-IntegratedDiagnosisConfirmed.md)
* [Diagnostic Report for 'MG Breast Screening' for '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](DiagnosticReport-IntegratedImagingReport.md)
* [Observation Satisfactory for evaluation but limited by lack of pertinent clinical patient information (finding)](Observation-IntegratedSpecimenLimited.md)
* [Observation Reason for test or procedure](Observation-IntegratedPresentationMode.md)
* [Observation Personal history of primary malignant neoplasm of breast (situation)](Observation-IntegratedCancerHistory.md)
* [Observation Cancer treatment --preoperative](Observation-IntegratedPriorTherapy.md)
* [Observation Lesion size, largest dimension (observable entity)](Observation-IntegratedRadiologicalExtent.md)
* [Observation Insertion of marker into breast using X-ray guidance (procedure)](Observation-IntegratedSpecimenMarking.md)
* [Observation 80865008|Specimen mammography|:363702006|Has focus|=185008008|Medical reports sent|](Observation-IntegratedSpecimenRadiographyClinical.md)
* [Observation Diathesis, function (observable entity)](Observation-IntegratedGeneticPredisposition.md)

**specimen**: 

* [Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_300; status = available; type = Specimen from breast obtained by excision (specimen); note = BET-Exzisionspräparat Mamma links, unterer äußerer Quadrant, 5 Uhr, 50 mm von Mamille. 42 × 35 × 18 mm, 10 g. Haut anhängend, Drahthäkchen in situ. Lamellierung in 8 Scheiben à 5 mm. Schnittfläche: grau-weißlicher Herdbefund zentral in Scheibe III–V, ca. 18 mm.](Specimen-IntegratedBETSpecimenPart.md)
* [Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_300; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.](Specimen-IntegratedSLNSpecimenPart.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "IntegratedReportRequest",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request|2026.0.0"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PLAC",
        "display" : "Placer Identifier"
      }]
    },
    "system" : "http://example.hospital.de/serviceRequest",
    "value" : "PATH-RPT-2025-300"
  }],
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "726007",
      "display" : "Pathology consultation, comprehensive, records and specimen with report (procedure)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "60568-3",
      "display" : "Pathology synoptic report"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "encounter" : {
    "reference" : "Encounter/IntegratedEncounter"
  },
  "requester" : {
    "reference" : "Practitioner/BreastSurgeonPractitioner"
  },
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "254837009",
      "display" : "Malignant neoplasm of breast (disorder)"
    }]
  }],
  "supportingInfo" : [{
    "reference" : "Condition/IntegratedDiagnosisConfirmed"
  },
  {
    "reference" : "DiagnosticReport/IntegratedImagingReport"
  },
  {
    "reference" : "Observation/IntegratedSpecimenLimited"
  },
  {
    "reference" : "Observation/IntegratedPresentationMode"
  },
  {
    "reference" : "Observation/IntegratedCancerHistory"
  },
  {
    "reference" : "Observation/IntegratedPriorTherapy"
  },
  {
    "reference" : "Observation/IntegratedRadiologicalExtent"
  },
  {
    "reference" : "Observation/IntegratedSpecimenMarking"
  },
  {
    "reference" : "Observation/IntegratedSpecimenRadiographyClinical"
  },
  {
    "reference" : "Observation/IntegratedGeneticPredisposition"
  }],
  "specimen" : [{
    "reference" : "Specimen/IntegratedBETSpecimenPart"
  },
  {
    "reference" : "Specimen/IntegratedSLNSpecimenPart"
  }]
}

```
