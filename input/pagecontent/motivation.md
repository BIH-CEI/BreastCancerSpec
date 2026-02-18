### Motivation

Structured pathology reporting in breast cancer is critical for:

- **Standardized data collection** across institutions
- **Interoperability** between pathology information systems, tumor boards, and cancer registries
- **Quality assurance** through complete and consistent reporting
- **Research and secondary use** of real-world pathology data

#### Why FHIR?

HL7 FHIR provides a modern, implementable standard for health data exchange. The MII (Medizininformatik-Initiative) has developed FHIR profiles specifically for German pathology reporting, enabling structured capture of findings from macroscopic examination through diagnostic conclusion.

#### Why This IG?

While the MII Pathology module defines the profiles, concrete examples demonstrating their use in breast cancer reporting were missing. This IG fills that gap by providing:

- Complete, clinically realistic example instances for each scenario
- Full specimen hierarchies (part → block → slide)
- Structured observations using LOINC, SNOMED CT, and ICD-O-3
- Document Bundles suitable for exchange between systems
- QuestionnaireResponses linking structured data entry to observations
