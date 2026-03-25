### Introduction

This Implementation Guide (IG) provides FHIR-based examples for structured breast cancer pathology reporting, based on the [MII Kerndatensatz Pathologie](https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report) profiles.


### Structure of the Scenarios

{% include img.html img="coreneedlebiopsy-structure.png" %}

The diagram above uses the Core Needle Biopsy scenario as a representative example. The other scenarios (Breast Resection, LN-Report) follow an analogous structure, differing primarily in the number and type of specimens, the applicable microscopic findings, and the diagnostic conclusion observations.

Currently available report types:

1. **Stanzbiopsie** – Core needle biopsy report (Stanz-/Vakuumbiopsie)
2. **OP-Präparat (BET)** – Breast-conserving excision specimen report
3. **SLN-Biopsie Axilla** – Sentinel lymph node biopsy report (standalone, ICCR-oriented)
4. **Integrierter Bericht (BET + SLN)** – Combined breast excision and sentinel lymph node biopsy report under a single accession number, reflecting standard German clinical practice (see [Integrated Report](integrated-report.html))

Each report type includes a complete set of FHIR resources: ServiceRequest, Encounter, Condition, Specimen hierarchy, macroscopic and diagnostic conclusion observations, DiagnosticReport, Composition, Document Bundle, and QuestionnaireResponse.

### Scope

This IG focuses on **example instances** that demonstrate how to use the MII Pathology module profiles for breast cancer reporting according to ICCR (International Collaboration on Cancer Reporting) datasets and the Questionnaires developed by the Bundesverband Deutscher Pathologen e.V.

### Dependencies

This IG builds on:
- [MII Kerndatensatz Pathologie](https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/) (2026.0.0)
- [MII Kerndatensatz Onkologie](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/) (2026.0.0)
- [MII Kerndatensatz Biobank](https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/) (2026.0.0)
