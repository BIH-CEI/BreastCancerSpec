// ============================================================================
// DOCUMENT BUNDLE - NEOADJUVANTE THERAPIE RESEKTION
// ============================================================================

Instance: NeoadjuvantTherapyResectionDocument
InstanceOf: Bundle
Usage: #example
Title: "Document Bundle - NAT Resektion"
Description: "FHIR Document Bundle für den vollständigen NAT Resektions-Befundbericht"
* type = #document
* timestamp = "2024-09-26T08:00:00+01:00"

* entry[+].fullUrl = "http://breastcancerspec.org/Composition/NeoadjuvantTherapyResectionComposition"
* entry[=].resource = NeoadjuvantTherapyResectionComposition

* entry[+].fullUrl = "http://breastcancerspec.org/Patient/Patient2"
* entry[=].resource = Patient2

* entry[+].fullUrl = "http://breastcancerspec.org/Organization/PathologyLabOrganization"
* entry[=].resource = PathologyLabOrganization

* entry[+].fullUrl = "http://breastcancerspec.org/DiagnosticReport/NeoadjuvantTherapyResectionReport"
* entry[=].resource = NeoadjuvantTherapyResectionReport

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/NeoadjuvantTherapyResectionDiagnosticConclusionGrouper"
* entry[=].resource = NeoadjuvantTherapyResectionDiagnosticConclusionGrouper

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/NeoadjuvantTherapyResectionMacroscopicGrouper"
* entry[=].resource = NeoadjuvantTherapyResectionMacroscopicGrouper
