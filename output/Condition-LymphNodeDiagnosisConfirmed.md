# Mammakarzinom-Diagnose (SLN-Indikation) - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mammakarzinom-Diagnose (SLN-Indikation)**

## Example Condition: Mammakarzinom-Diagnose (SLN-Indikation)

Profile: [MII PR Diagnose Conditionversion: null2026.0.0)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Bösartige Neubildung: Unterer äußerer Quadrant der Brustdrüse

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**encounter**: [Encounter: identifier = http://example.hospital.de/encounters#E_25_211; status = finished; class = IMP (IMP)](Encounter-LymphNodeEncounter.md)

**onset**: 2025-01-15

**recordedDate**: 2025-02-05

**note**: 

> 

Invasives Mammakarzinom NST links, G2. SLN-Biopsie indiziert bei klinisch unauffälliger Axilla (cN0).




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "LymphNodeDiagnosisConfirmed",
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
    "reference" : "Encounter/LymphNodeEncounter"
  },
  "onsetDateTime" : "2025-01-15",
  "recordedDate" : "2025-02-05",
  "note" : [{
    "text" : "Invasives Mammakarzinom NST links, G2. SLN-Biopsie indiziert bei klinisch unauffälliger Axilla (cN0)."
  }]
}

```
