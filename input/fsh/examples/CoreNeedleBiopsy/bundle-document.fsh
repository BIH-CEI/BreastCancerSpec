// ============================================================================
// DOCUMENT BUNDLE - STANZBIOPSIE
// ============================================================================

Instance: CoreNeedleBiopsyDocument
InstanceOf: Bundle
Usage: #example
Title: "Document Bundle - Stanzbiopsie Mamma"
Description: "FHIR Document Bundle für den vollständigen Stanzbiopsie-Befundbericht"
* type = #document
* timestamp = "2025-01-17T17:00:00+01:00"

* entry[+].fullUrl = "http://breastcancerspec.org/Composition/CoreNeedleBiopsyComposition"
* entry[=].resource = CoreNeedleBiopsyComposition

* entry[+].fullUrl = "http://breastcancerspec.org/Patient/Patient4"
* entry[=].resource = Patient4

* entry[+].fullUrl = "http://breastcancerspec.org/Organization/PathologyLabOrganization"
* entry[=].resource = PathologyLabOrganization

* entry[+].fullUrl = "http://breastcancerspec.org/DiagnosticReport/CoreNeedleBiopsyReport"
* entry[=].resource = CoreNeedleBiopsyReport

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyDiagnosticConclusionGrouper"
* entry[=].resource = CoreNeedleBiopsyDiagnosticConclusionGrouper

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyMacroscopicGrouper"
* entry[=].resource = CoreNeedleBiopsyMacroscopicGrouper
