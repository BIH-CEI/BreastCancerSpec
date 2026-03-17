# Stanzbiopsie Mamma Anforderung - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stanzbiopsie Mamma Anforderung**

## Example ServiceRequest: Stanzbiopsie Mamma Anforderung

Profile: [MII PR Patho Service Requestversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request)

**identifier**: Placer Identifier/PATH-RPT-2025-105

**status**: Completed

**intent**: Order

**category**: Pathology consultation, comprehensive, records and specimen with report (procedure)

**code**: Breast Pathology biopsy report

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**encounter**: [Encounter: identifier = http://example.hospital.de/encounters#E_25_105; status = finished; class = AMB (AMB)](Encounter-CoreNeedleBiopsyEncounter.md)

**requester**: [Practitioner Thomas Richter ](Practitioner-BreastSurgeonPractitioner.md)

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**reasonCode**: Mammographic architectural distortion of breast (finding)

**supportingInfo**: [Diagnostic Report for 'MG Breast Screening' for '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](DiagnosticReport-CoreNeedleBiopsyImagingReport.md)

**specimen**: [Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_105; status = available; type = Specimen from breast obtained by core needle biopsy (specimen); note = HG-Stanzen/Mamma, li., 5 Uhr, 5 cm von Mamille, US-gestützte Stanzbiopsie. 2 Stanzzylinder, zusammen 22 mm, mittelfest, grauweißlich, Bleistiftminenstärke.](Specimen-CoreNeedleBiopsySpecimenPart.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "CoreNeedleBiopsyReportRequest",
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
    "value" : "PATH-RPT-2025-105"
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
      "code" : "66110-8",
      "display" : "Breast Pathology biopsy report"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "encounter" : {
    "reference" : "Encounter/CoreNeedleBiopsyEncounter"
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
      "code" : "129792006",
      "display" : "Mammographic architectural distortion of breast (finding)"
    }]
  }],
  "supportingInfo" : [{
    "reference" : "DiagnosticReport/CoreNeedleBiopsyImagingReport"
  }],
  "specimen" : [{
    "reference" : "Specimen/CoreNeedleBiopsySpecimenPart"
  }]
}

```
