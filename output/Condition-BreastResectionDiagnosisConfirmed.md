# Mammakarzinom-Diagnose bestätigt - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mammakarzinom-Diagnose bestätigt**

## Example Condition: Mammakarzinom-Diagnose bestätigt

Profile: [MII PR Diagnose Conditionversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Bösartige Neubildung: Unterer äußerer Quadrant der Brustdrüse

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**encounter**: [Encounter: identifier = http://example.hospital.de/encounters#E_25_210; status = finished; class = IMP (IMP)](Encounter-BreastResectionEncounter.md)

**onset**: 2025-01-15

**recordedDate**: 2025-02-05

**note**: 

> 

Z.n. Stanzbiopsie (E_25_105) mit Nachweis eines invasiven Mammakarzinoms NST, G2. BI-RADS 4b. BET links indiziert.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "BreastResectionDiagnosisConfirmed",
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
      "code" : "confirmed"
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
    "reference" : "Encounter/BreastResectionEncounter"
  },
  "onsetDateTime" : "2025-01-15",
  "recordedDate" : "2025-02-05",
  "note" : [{
    "text" : "Z.n. Stanzbiopsie (E_25_105) mit Nachweis eines invasiven Mammakarzinoms NST, G2. BI-RADS 4b. BET links indiziert."
  }]
}

```
