# SLN-Biopsie Anforderung - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SLN-Biopsie Anforderung**

## Example ServiceRequest: SLN-Biopsie Anforderung

Profile: [MII PR Patho Service Requestversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request)

**identifier**: Placer Identifier/PATH-RPT-2025-211

**status**: Completed

**intent**: Order

**category**: Pathology consultation, comprehensive, records and specimen with report (procedure)

**code**: Pathology synoptic report

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**encounter**: [Encounter: identifier = http://example.hospital.de/encounters#E_25_211; status = finished; class = IMP (IMP)](Encounter-LymphNodeEncounter.md)

**requester**: [Practitioner Thomas Richter ](Practitioner-BreastSurgeonPractitioner.md)

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**reasonCode**: Carcinoma of breast (disorder)

**supportingInfo**: 

* [Condition Bösartige Neubildung: Unterer äußerer Quadrant der Brustdrüse](Condition-LymphNodeDiagnosisConfirmed.md)
* [Diagnostic Report for 'MG Breast Screening' for '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](DiagnosticReport-LymphNodeImagingReport.md)
* [Observation Satisfactory for evaluation but limited by lack of pertinent clinical patient information (finding)](Observation-LymphNodeSpecimenLimited.md)

**specimen**: [Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.](Specimen-LymphNodeSpecimenPart.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "LymphNodeReportRequest",
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
    "value" : "PATH-RPT-2025-211"
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
    "reference" : "Encounter/LymphNodeEncounter"
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
      "code" : "254838004",
      "display" : "Carcinoma of breast (disorder)"
    }]
  }],
  "supportingInfo" : [{
    "reference" : "Condition/LymphNodeDiagnosisConfirmed"
  },
  {
    "reference" : "DiagnosticReport/LymphNodeImagingReport"
  },
  {
    "reference" : "Observation/LymphNodeSpecimenLimited"
  }],
  "specimen" : [{
    "reference" : "Specimen/LymphNodeSpecimenPart"
  }]
}

```
