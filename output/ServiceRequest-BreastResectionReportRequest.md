# BET Mamma Anforderung - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BET Mamma Anforderung**

## Example ServiceRequest: BET Mamma Anforderung

Profile: [MII PR Patho Service Requestversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request)

**identifier**: Placer Identifier/PATH-RPT-2025-210

**status**: Completed

**intent**: Order

**category**: Pathology consultation, comprehensive, records and specimen with report (procedure)

**code**: Pathology synoptic report

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**encounter**: [Encounter: identifier = http://example.hospital.de/encounters#E_25_210; status = finished; class = IMP (IMP)](Encounter-BreastResectionEncounter.md)

**requester**: [Practitioner Thomas Richter ](Practitioner-BreastSurgeonPractitioner.md)

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**reasonCode**: Malignant neoplasm of breast (disorder)

**supportingInfo**: 

* [Condition Bösartige Neubildung: Unterer äußerer Quadrant der Brustdrüse](Condition-BreastResectionDiagnosisConfirmed.md)
* [Diagnostic Report for 'MG Breast Screening' for '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](DiagnosticReport-BreastResectionImagingReport.md)
* [Observation Satisfactory for evaluation but limited by lack of pertinent clinical patient information (finding)](Observation-BreastResectionSpecimenLimited.md)
* [Observation Reason for test or procedure](Observation-BreastResectionPresentationMode.md)
* [Observation Personal history of primary malignant neoplasm of breast (situation)](Observation-BreastResectionCancerHistory.md)
* [Observation Cancer treatment --preoperative](Observation-BreastResectionPriorTherapy.md)
* [Observation Lesion size, largest dimension (observable entity)](Observation-BreastResectionRadiologicalExtent.md)
* [Observation Insertion of marker into breast using X-ray guidance (procedure)](Observation-BreastResectionSpecimenMarking.md)
* [Observation 80865008|Specimen mammography|:363702006|Has focus|=185008008|Medical reports sent|](Observation-BreastResectionSpecimenRadiographyClinical.md)
* [Observation Diathesis, function (observable entity)](Observation-BreastResectionGeneticPredisposition.md)

**specimen**: [Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_210; status = available; type = Specimen from breast obtained by excision (specimen); note = BET-Exzisionspräparat Mamma links, unterer äußerer Quadrant, 5 Uhr, 50 mm von Mamille. Mit Haut, Drahthäkchen in situ. 65 x 45 x 30 mm, 55 g. Schnittfläche: grau-weißlich, derber Herdbefund zentral, ca. 18 mm.](Specimen-BreastResectionSpecimenPart.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "BreastResectionReportRequest",
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
    "value" : "PATH-RPT-2025-210"
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
    "reference" : "Encounter/BreastResectionEncounter"
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
    "reference" : "Condition/BreastResectionDiagnosisConfirmed"
  },
  {
    "reference" : "DiagnosticReport/BreastResectionImagingReport"
  },
  {
    "reference" : "Observation/BreastResectionSpecimenLimited"
  },
  {
    "reference" : "Observation/BreastResectionPresentationMode"
  },
  {
    "reference" : "Observation/BreastResectionCancerHistory"
  },
  {
    "reference" : "Observation/BreastResectionPriorTherapy"
  },
  {
    "reference" : "Observation/BreastResectionRadiologicalExtent"
  },
  {
    "reference" : "Observation/BreastResectionSpecimenMarking"
  },
  {
    "reference" : "Observation/BreastResectionSpecimenRadiographyClinical"
  },
  {
    "reference" : "Observation/BreastResectionGeneticPredisposition"
  }],
  "specimen" : [{
    "reference" : "Specimen/BreastResectionSpecimenPart"
  }]
}

```
