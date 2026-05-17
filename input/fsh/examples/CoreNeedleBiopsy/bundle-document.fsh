// ============================================================================
// DOCUMENT BUNDLE - STANZBIOPSIE
// ============================================================================

Instance: CoreNeedleBiopsyDocument
InstanceOf: Bundle
Usage: #example
Title: "Document Bundle - Stanzbiopsie Mamma"
Description: "FHIR Document Bundle für den vollständigen Stanzbiopsie-Befundbericht"
* type = #document
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_25_001"
* timestamp = "2025-01-17T17:00:00+01:00"

// --- Composition (must be first) ---
* entry[+].fullUrl = "http://breastcancerspec.org/Composition/CoreNeedleBiopsyComposition"
* entry[=].resource = CoreNeedleBiopsyComposition

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
* entry[+].fullUrl = "http://breastcancerspec.org/Encounter/CoreNeedleBiopsyEncounter"
* entry[=].resource = CoreNeedleBiopsyEncounter

// --- Condition (Diagnosis) ---
* entry[+].fullUrl = "http://breastcancerspec.org/Condition/CoreNeedleBiopsyDiagnosisPreOp"
* entry[=].resource = CoreNeedleBiopsyDiagnosisPreOp

// --- ServiceRequest ---
* entry[+].fullUrl = "http://breastcancerspec.org/ServiceRequest/CoreNeedleBiopsyReportRequest"
* entry[=].resource = CoreNeedleBiopsyReportRequest

// --- Imaging DiagnosticReport (supportingInfo) ---
* entry[+].fullUrl = "http://breastcancerspec.org/DiagnosticReport/CoreNeedleBiopsyImagingReport"
* entry[=].resource = CoreNeedleBiopsyImagingReport

// --- DiagnosticReport (Pathology) ---
* entry[+].fullUrl = "http://breastcancerspec.org/DiagnosticReport/CoreNeedleBiopsyReport"
* entry[=].resource = CoreNeedleBiopsyReport

// --- Specimens ---
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/CoreNeedleBiopsySpecimenPart"
* entry[=].resource = CoreNeedleBiopsySpecimenPart

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/CoreNeedleBiopsySpecimenBlock01"
* entry[=].resource = CoreNeedleBiopsySpecimenBlock01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/CoreNeedleBiopsySpecimenSlideHE01"
* entry[=].resource = CoreNeedleBiopsySpecimenSlideHE01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/CoreNeedleBiopsySpecimenSlideHE02"
* entry[=].resource = CoreNeedleBiopsySpecimenSlideHE02

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/CoreNeedleBiopsySpecimenSlideHE03"
* entry[=].resource = CoreNeedleBiopsySpecimenSlideHE03

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/CoreNeedleBiopsySpecimenSlideHE04"
* entry[=].resource = CoreNeedleBiopsySpecimenSlideHE04

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/CoreNeedleBiopsySpecimenSlideER01"
* entry[=].resource = CoreNeedleBiopsySpecimenSlideER01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/CoreNeedleBiopsySpecimenSlideER02"
* entry[=].resource = CoreNeedleBiopsySpecimenSlideER02

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/CoreNeedleBiopsySpecimenSlidePR01"
* entry[=].resource = CoreNeedleBiopsySpecimenSlidePR01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/CoreNeedleBiopsySpecimenSlidePR02"
* entry[=].resource = CoreNeedleBiopsySpecimenSlidePR02

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/CoreNeedleBiopsySpecimenSlideHER2-01"
* entry[=].resource = CoreNeedleBiopsySpecimenSlideHER2-01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/CoreNeedleBiopsySpecimenSlideHER2-02"
* entry[=].resource = CoreNeedleBiopsySpecimenSlideHER2-02

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/CoreNeedleBiopsySpecimenSlideKi67-01"
* entry[=].resource = CoreNeedleBiopsySpecimenSlideKi67-01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/CoreNeedleBiopsySpecimenSlideKi67-02"
* entry[=].resource = CoreNeedleBiopsySpecimenSlideKi67-02

// --- Macroscopy Observations ---
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyMacroscopicGrouper"
* entry[=].resource = CoreNeedleBiopsyMacroscopicGrouper

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyMacroscopicTotalLength"
* entry[=].resource = CoreNeedleBiopsyMacroscopicTotalLength

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyMacroscopicCylinderCount"
* entry[=].resource = CoreNeedleBiopsyMacroscopicCylinderCount

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyMacroscopicBlockCount"
* entry[=].resource = CoreNeedleBiopsyMacroscopicBlockCount

// --- Diagnostic Conclusion Observations ---
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyDiagnosticConclusionGrouper"
* entry[=].resource = CoreNeedleBiopsyDiagnosticConclusionGrouper

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyHistologicalTypeICDO3"
* entry[=].resource = CoreNeedleBiopsyHistologicalTypeICDO3

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyMorphologyFreeText"
* entry[=].resource = CoreNeedleBiopsyMorphologyFreeText

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyNottinghamGrade"
* entry[=].resource = CoreNeedleBiopsyNottinghamGrade

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyNottinghamSummaryScore"
* entry[=].resource = CoreNeedleBiopsyNottinghamSummaryScore

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyERStatus"
* entry[=].resource = CoreNeedleBiopsyERStatus

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyERPercentage"
* entry[=].resource = CoreNeedleBiopsyERPercentage

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyPRStatus"
* entry[=].resource = CoreNeedleBiopsyPRStatus

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyPRPercentage"
* entry[=].resource = CoreNeedleBiopsyPRPercentage

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyHER2ISH"
* entry[=].resource = CoreNeedleBiopsyHER2ISH

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyKi67"
* entry[=].resource = CoreNeedleBiopsyKi67

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyInterpretation"
* entry[=].resource = CoreNeedleBiopsyInterpretation

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyMicrocalcification"
* entry[=].resource = CoreNeedleBiopsyMicrocalcification

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsySpecimenRadiography"
* entry[=].resource = CoreNeedleBiopsySpecimenRadiography

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/CoreNeedleBiopsyMicrocalcificationCorrelation"
* entry[=].resource = CoreNeedleBiopsyMicrocalcificationCorrelation

// --- QuestionnaireResponse ---
* entry[+].fullUrl = "http://breastcancerspec.org/QuestionnaireResponse/QuestionnaireResponseCoreNeedleBiopsy"
* entry[=].resource = QuestionnaireResponseCoreNeedleBiopsy
