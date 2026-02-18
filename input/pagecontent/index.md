### Introduction

This Implementation Guide (IG) provides FHIR-based examples for structured breast cancer pathology reporting, based on the [MII Kerndatensatz Pathologie](https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report) profiles.

It covers four clinical scenarios:

1. **[DCIS Resection](dcis-specimens.html)** – Ductal Carcinoma in Situ resection specimen
2. **[Invasive Carcinoma Resection](invasive-carcinoma-specimens.html)** – Invasive breast carcinoma (NST) resection specimen
3. **[Neoadjuvant Therapy Resection](neoadjuvant-specimens.html)** – Resection specimen after neoadjuvant chemotherapy
4. **[Lymph Node Specimens](lymphnode-specimens.html)** – Sentinel lymph node biopsy specimens

Each scenario includes a complete set of FHIR resources: ServiceRequest, Encounter, Condition, Specimen hierarchy, macroscopic and diagnostic conclusion observations, DiagnosticReport, Composition, Document Bundle, and QuestionnaireResponse.

### Scope

This IG focuses on **example instances** that demonstrate how to use the MII Pathology module profiles for breast cancer reporting according to ICCR (International Collaboration on Cancer Reporting) datasets.

### Dependencies

This IG builds on:
- [MII Kerndatensatz Pathologie](https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/) (2026.0.0)
- [MII Kerndatensatz Onkologie](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/) (2026.0.0)
- [MII Kerndatensatz Biobank](https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/) (2026.0.0)
