# Mammakarzinom-Diagnose Stanzbiopsie - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mammakarzinom-Diagnose Stanzbiopsie**

## Example Condition: Mammakarzinom-Diagnose Stanzbiopsie

Profile: [MII PR Diagnose Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose) version: 2026.0.0

**clinicalStatus**: Active

**verificationStatus**: Provisional

**category**: Encounter Diagnosis

**code**: Bösartige Neubildung: Unterer äußerer Quadrant der Brustdrüse

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**encounter**: [Encounter: identifier = http://example.hospital.de/encounters#E_25_105; status = finished; class = AMB (AMB)](Encounter-CoreNeedleBiopsyEncounter.md)

**onset**: 2025-01-10

**recordedDate**: 2025-01-10

**note**: 

> 

Herdbefund/Architekturstörung linke Brust, BI-RADS 4b. Indikation zur US-gestützten Stanzbiopsie.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "CoreNeedleBiopsyDiagnosisPreOp",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2026.0.0"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "provisional"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2025",
      "code" : "C50.5",
      "display" : "Bösartige Neubildung: Unterer äußerer Quadrant der Brustdrüse"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "encounter" : {
    "reference" : "Encounter/CoreNeedleBiopsyEncounter"
  },
  "onsetDateTime" : "2025-01-10",
  "recordedDate" : "2025-01-10",
  "note" : [{
    "text" : "Herdbefund/Architekturstörung linke Brust, BI-RADS 4b. Indikation zur US-gestützten Stanzbiopsie."
  }]
}

```
