// ============================================================================
// DOCUMENT BUNDLE - SLN-BIOPSIE AXILLA
// ============================================================================

Instance: LymphNodeDocument
InstanceOf: Bundle
Usage: #example
Title: "Document Bundle - SLN-Biopsie Axilla"
Description: "FHIR Document Bundle für den vollständigen SLN-Befundbericht"
* type = #document
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_25_003"
* timestamp = "2025-02-10T17:00:00+01:00"

// --- Composition (must be first) ---
* entry[+].fullUrl = "http://breastcancerspec.org/Composition/LymphNodeComposition"
* entry[=].resource = LymphNodeComposition

// --- Patient ---
* entry[+].fullUrl = "http://breastcancerspec.org/Patient/Patient4"
* entry[=].resource = Patient4

// --- Organizations ---
* entry[+].fullUrl = "http://breastcancerspec.org/Organization/PathologyLabOrganization"
* entry[=].resource = PathologyLabOrganization

// --- Practitioners ---
* entry[+].fullUrl = "http://breastcancerspec.org/Practitioner/PathologistPractitioner"
* entry[=].resource = PathologistPractitioner

* entry[+].fullUrl = "http://breastcancerspec.org/Practitioner/BreastSurgeonPractitioner"
* entry[=].resource = BreastSurgeonPractitioner

// --- Encounter ---
* entry[+].fullUrl = "http://breastcancerspec.org/Encounter/LymphNodeEncounter"
* entry[=].resource = LymphNodeEncounter

// --- Condition (Diagnosis) ---
* entry[+].fullUrl = "http://breastcancerspec.org/Condition/LymphNodeDiagnosisConfirmed"
* entry[=].resource = LymphNodeDiagnosisConfirmed

// --- ServiceRequest ---
* entry[+].fullUrl = "http://breastcancerspec.org/ServiceRequest/LymphNodeReportRequest"
* entry[=].resource = LymphNodeReportRequest

// --- SupportingInfo ---
* entry[+].fullUrl = "http://breastcancerspec.org/DiagnosticReport/LymphNodeImagingReport"
* entry[=].resource = LymphNodeImagingReport

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeSpecimenLimited"
* entry[=].resource = LymphNodeSpecimenLimited

// --- DiagnosticReport (Pathology) ---
* entry[+].fullUrl = "http://breastcancerspec.org/DiagnosticReport/LymphNodeReport"
* entry[=].resource = LymphNodeReport

// --- Specimens ---
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/LymphNodeSpecimenPart"
* entry[=].resource = LymphNodeSpecimenPart

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/LymphNodeSpecimenBlock01"
* entry[=].resource = LymphNodeSpecimenBlock01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/LymphNodeSpecimenBlock02"
* entry[=].resource = LymphNodeSpecimenBlock02

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/LymphNodeSpecimenSlideHE01"
* entry[=].resource = LymphNodeSpecimenSlideHE01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/LymphNodeSpecimenSlideHE02"
* entry[=].resource = LymphNodeSpecimenSlideHE02

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/LymphNodeSpecimenSlideHE03"
* entry[=].resource = LymphNodeSpecimenSlideHE03

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/LymphNodeSpecimenSlideHE04"
* entry[=].resource = LymphNodeSpecimenSlideHE04

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/LymphNodeSpecimenSlideHE05"
* entry[=].resource = LymphNodeSpecimenSlideHE05

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/LymphNodeSpecimenSlideHE06"
* entry[=].resource = LymphNodeSpecimenSlideHE06

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/LymphNodeSpecimenSlideHE07"
* entry[=].resource = LymphNodeSpecimenSlideHE07

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/LymphNodeSpecimenSlideHE08"
* entry[=].resource = LymphNodeSpecimenSlideHE08

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/LymphNodeSpecimenSlideHE09"
* entry[=].resource = LymphNodeSpecimenSlideHE09

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/LymphNodeSpecimenSlideHE10"
* entry[=].resource = LymphNodeSpecimenSlideHE10

// --- Macroscopy Observations ---
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeMacroscopicGrouper"
* entry[=].resource = LymphNodeMacroscopicGrouper

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeMacroSLNExamined"
* entry[=].resource = LymphNodeMacroSLNExamined

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeMacroTotalExamined"
* entry[=].resource = LymphNodeMacroTotalExamined

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeMacroSLN1Size"
* entry[=].resource = LymphNodeMacroSLN1Size

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeMacroSLN2Size"
* entry[=].resource = LymphNodeMacroSLN2Size

// --- Diagnostic Conclusion Observations ---
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeDiagnosticConclusionGrouper"
* entry[=].resource = LymphNodeDiagnosticConclusionGrouper

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeProcedure"
* entry[=].resource = LymphNodeProcedure

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeLaterality"
* entry[=].resource = LymphNodeLaterality

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeNonSLNExamined"
* entry[=].resource = LymphNodeNonSLNExamined

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeNonSLNPositive"
* entry[=].resource = LymphNodeNonSLNPositive

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeSLNExamined"
* entry[=].resource = LymphNodeSLNExamined

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeSLNPositive"
* entry[=].resource = LymphNodeSLNPositive

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeTotalExamined"
* entry[=].resource = LymphNodeTotalExamined

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeTotalPositive"
* entry[=].resource = LymphNodeTotalPositive

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeMacroMetCount"
* entry[=].resource = LymphNodeMacroMetCount

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeMicroMetCount"
* entry[=].resource = LymphNodeMicroMetCount

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeITCCount"
* entry[=].resource = LymphNodeITCCount

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeLargestMetSize"
* entry[=].resource = LymphNodeLargestMetSize

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeExtranodalExtension"
* entry[=].resource = LymphNodeExtranodalExtension

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodePN"
* entry[=].resource = LymphNodePN

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/LymphNodeComment"
* entry[=].resource = LymphNodeComment

// --- QuestionnaireResponse ---
* entry[+].fullUrl = "http://breastcancerspec.org/QuestionnaireResponse/QuestionnaireResponseLymphNode"
* entry[=].resource = QuestionnaireResponseLymphNode
