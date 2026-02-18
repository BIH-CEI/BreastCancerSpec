// ============================================================================
// DOCUMENT BUNDLE - DCIS RESEKTION
// ============================================================================

Instance: DCISResectionDocument
InstanceOf: Bundle
Usage: #example
Title: "Document Bundle - DCIS Resektion"
Description: "FHIR Document Bundle für den vollständigen DCIS Resektions-Befundbericht"
* type = #document
* timestamp = "2024-06-15T08:00:00+01:00"

* entry[+].fullUrl = "http://breastcancerspec.org/Composition/DCISResectionComposition"
* entry[=].resource = DCISResectionComposition

* entry[+].fullUrl = "http://breastcancerspec.org/Patient/Patient3"
* entry[=].resource = Patient3

* entry[+].fullUrl = "http://breastcancerspec.org/Organization/PathologyLabOrganization"
* entry[=].resource = PathologyLabOrganization

* entry[+].fullUrl = "http://breastcancerspec.org/DiagnosticReport/DCISResectionReport"
* entry[=].resource = DCISResectionReport

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/DCISResectionDiagnosticConclusionGrouper"
* entry[=].resource = DCISResectionDiagnosticConclusionGrouper

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/DCISResectionMacroscopicGrouper"
* entry[=].resource = DCISResectionMacroscopicGrouper
