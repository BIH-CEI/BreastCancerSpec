// ============================================================================
// DOCUMENT BUNDLE - INVASIVES KARZINOM RESEKTION
// ============================================================================

Instance: InvasiveCarcinomaResectionDocument
InstanceOf: Bundle
Usage: #example
Title: "Document Bundle - Invasives Karzinom Resektion"
Description: "FHIR Document Bundle für den vollständigen Invasive Carcinoma Resektions-Befundbericht"
* type = #document
* timestamp = "2024-07-20T08:00:00+01:00"

* entry[+].fullUrl = "http://breastcancerspec.org/Composition/InvasiveCarcinomaResectionComposition"
* entry[=].resource = InvasiveCarcinomaResectionComposition

* entry[+].fullUrl = "http://breastcancerspec.org/Patient/Patient1"
* entry[=].resource = Patient1

* entry[+].fullUrl = "http://breastcancerspec.org/Organization/PathologyLabOrganization"
* entry[=].resource = PathologyLabOrganization

* entry[+].fullUrl = "http://breastcancerspec.org/DiagnosticReport/InvasiveCarcinomaResectionReport"
* entry[=].resource = InvasiveCarcinomaResectionReport

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/InvasiveCarcinomaResectionDiagnosticConclusionGrouper"
* entry[=].resource = InvasiveCarcinomaResectionDiagnosticConclusionGrouper

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/InvasiveCarcinomaResectionMacroscopicGrouper"
* entry[=].resource = InvasiveCarcinomaResectionMacroscopicGrouper
