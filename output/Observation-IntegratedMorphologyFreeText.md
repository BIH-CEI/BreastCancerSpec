# Morphologie Freitext - BET - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Morphologie Freitext - BET**

## Example Observation: Morphologie Freitext - BET

Profile: [MII PR Patho Finding](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding) version: 2026.0.0

**basedOn**: [ServiceRequest Pathology synoptic report](ServiceRequest-IntegratedReportRequest.md)

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Morphologie Freitext

**subject**: [Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)](Patient-Patient4.md)

**effective**: 2025-02-10

**performer**: [Practitioner Elisabeth Hoffmann ](Practitioner-PathologistPractitioner.md)

**value**: Invasives Mammakarzinom des NST (kein spezieller Typ), maximal 18 mm messend. Das Karzinom zeigt ein überwiegend trabekuläres und solides Wachstumsmuster mit mäßiger Kern- und Zellpolymorphie. Mitosen sind vereinzelt nachweisbar (4/10 HPF). In der Tumorperipherie zeigt sich ein begleitendes duktales Carcinoma in situ (DCIS) mit intermediärem Kerngrad und überwiegend kribriformem Wachstumsmuster, maximal 8 mm. Fokale Komedo-Nekrosen. Assoziierte Mikroverkalkungen im DCIS-Areal. Alle Resektionsränder tumorfrei. Mindestabstand invasiv: 5 mm (posterior), DCIS: 3 mm. Keine Lymphgefäßinvasion.

**specimen**: [Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_300_A_1_1_HE_01; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_300; status = available; type = Tissue section (specimen)](Specimen-IntegratedBETSlideHE01.md)

**derivedFrom**: [Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_Mamma_GH' about '->Sabine Becker Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'](QuestionnaireResponse-IntegratedQRBreastResection.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IntegratedMorphologyFreeText",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/IntegratedReportRequest"
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
      "code" : "33731-1",
      "display" : "Histology type in Cancer specimen Narrative"
    }],
    "text" : "Morphologie Freitext"
  },
  "subject" : {
    "reference" : "Patient/Patient4"
  },
  "effectiveDateTime" : "2025-02-10",
  "performer" : [{
    "reference" : "Practitioner/PathologistPractitioner"
  }],
  "valueString" : "Invasives Mammakarzinom des NST (kein spezieller Typ), maximal 18 mm messend. Das Karzinom zeigt ein überwiegend trabekuläres und solides Wachstumsmuster mit mäßiger Kern- und Zellpolymorphie. Mitosen sind vereinzelt nachweisbar (4/10 HPF). In der Tumorperipherie zeigt sich ein begleitendes duktales Carcinoma in situ (DCIS) mit intermediärem Kerngrad und überwiegend kribriformem Wachstumsmuster, maximal 8 mm. Fokale Komedo-Nekrosen. Assoziierte Mikroverkalkungen im DCIS-Areal. Alle Resektionsränder tumorfrei. Mindestabstand invasiv: 5 mm (posterior), DCIS: 3 mm. Keine Lymphgefäßinvasion.",
  "specimen" : {
    "reference" : "Specimen/IntegratedBETSlideHE01"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/IntegratedQRBreastResection"
  }]
}

```
