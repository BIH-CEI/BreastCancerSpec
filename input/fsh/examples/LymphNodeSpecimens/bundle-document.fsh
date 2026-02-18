// ============================================================================
// DOCUMENT BUNDLE - LYMPHKNOTEN SPECIMENS
// ============================================================================

Instance: LymphNodeSpecimensDocument
InstanceOf: Bundle
Usage: #example
Title: "Document Bundle - Lymphknoten Specimens"
Description: "FHIR Document Bundle für den vollständigen Sentinel-Lymphknoten-Befundbericht"
* type = #document
* timestamp = "2024-07-20T08:00:00+01:00"

* entry[+].fullUrl = "http://breastcancerspec.org/Composition/LymphNodeSpecimensComposition"
* entry[=].resource = LymphNodeSpecimensComposition

* entry[+].fullUrl = "http://breastcancerspec.org/Patient/Patient1"
* entry[=].resource = Patient1

* entry[+].fullUrl = "http://breastcancerspec.org/Organization/PathologyLabOrganization"
* entry[=].resource = PathologyLabOrganization

* entry[+].fullUrl = "http://breastcancerspec.org/DiagnosticReport/LymphNodeSpecimensReport"
* entry[=].resource = LymphNodeSpecimensReport

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeSpecimensDiagnosticConclusionGrouper"
* entry[=].resource = LymphNodeSpecimensDiagnosticConclusionGrouper

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeSpecimensMacroscopicGrouper"
* entry[=].resource = LymphNodeSpecimensMacroscopicGrouper
