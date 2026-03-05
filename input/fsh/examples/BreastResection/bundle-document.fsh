// ============================================================================
// DOCUMENT BUNDLE - BET MAMMA
// ============================================================================

Instance: BreastResectionDocument
InstanceOf: Bundle
Usage: #example
Title: "Document Bundle - BET Mamma"
Description: "FHIR Document Bundle für den vollständigen BET-Befundbericht"
* type = #document
* timestamp = "2025-02-10T17:00:00+01:00"

// --- Composition (must be first) ---
* entry[+].fullUrl = "http://breastcancerspec.org/Composition/BreastResectionComposition"
* entry[=].resource = BreastResectionComposition

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
* entry[+].fullUrl = "http://breastcancerspec.org/Encounter/BreastResectionEncounter"
* entry[=].resource = BreastResectionEncounter

// --- Condition (Diagnosis) ---
* entry[+].fullUrl = "http://breastcancerspec.org/Condition/BreastResectionDiagnosisConfirmed"
* entry[=].resource = BreastResectionDiagnosisConfirmed

// --- ServiceRequest ---
* entry[+].fullUrl = "http://breastcancerspec.org/ServiceRequest/BreastResectionReportRequest"
* entry[=].resource = BreastResectionReportRequest

// --- SupportingInfo: Imaging DiagnosticReport ---
* entry[+].fullUrl = "http://breastcancerspec.org/DiagnosticReport/BreastResectionImagingReport"
* entry[=].resource = BreastResectionImagingReport

// --- SupportingInfo: Clinical Observations ---
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionSpecimenLimited"
* entry[=].resource = BreastResectionSpecimenLimited

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionPresentationMode"
* entry[=].resource = BreastResectionPresentationMode

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionCancerHistory"
* entry[=].resource = BreastResectionCancerHistory

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionPriorTherapy"
* entry[=].resource = BreastResectionPriorTherapy

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionRadiologicalExtent"
* entry[=].resource = BreastResectionRadiologicalExtent

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionSpecimenMarking"
* entry[=].resource = BreastResectionSpecimenMarking

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionSpecimenRadiographyClinical"
* entry[=].resource = BreastResectionSpecimenRadiographyClinical

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionGeneticPredisposition"
* entry[=].resource = BreastResectionGeneticPredisposition

// --- DiagnosticReport (Pathology) ---
* entry[+].fullUrl = "http://breastcancerspec.org/DiagnosticReport/BreastResectionReport"
* entry[=].resource = BreastResectionReport

// --- Specimens ---
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenPart"
* entry[=].resource = BreastResectionSpecimenPart

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenBlock01"
* entry[=].resource = BreastResectionSpecimenBlock01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenBlock02"
* entry[=].resource = BreastResectionSpecimenBlock02

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenBlock03"
* entry[=].resource = BreastResectionSpecimenBlock03

// Block01 Slides: Tumor HE (4)
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideHE01"
* entry[=].resource = BreastResectionSpecimenSlideHE01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideHE02"
* entry[=].resource = BreastResectionSpecimenSlideHE02

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideHE03"
* entry[=].resource = BreastResectionSpecimenSlideHE03

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideHE04"
* entry[=].resource = BreastResectionSpecimenSlideHE04

// Block01 Slides: ER (2)
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideER01"
* entry[=].resource = BreastResectionSpecimenSlideER01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideER02"
* entry[=].resource = BreastResectionSpecimenSlideER02

// Block01 Slides: PR (2)
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlidePR01"
* entry[=].resource = BreastResectionSpecimenSlidePR01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlidePR02"
* entry[=].resource = BreastResectionSpecimenSlidePR02

// Block01 Slides: HER2 (2)
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideHER2-01"
* entry[=].resource = BreastResectionSpecimenSlideHER2-01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideHER2-02"
* entry[=].resource = BreastResectionSpecimenSlideHER2-02

// Block01 Slides: Ki67 (2)
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideKi67-01"
* entry[=].resource = BreastResectionSpecimenSlideKi67-01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideKi67-02"
* entry[=].resource = BreastResectionSpecimenSlideKi67-02

// Block02 Slides: DCIS HE (2)
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideDCIS-HE01"
* entry[=].resource = BreastResectionSpecimenSlideDCIS-HE01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideDCIS-HE02"
* entry[=].resource = BreastResectionSpecimenSlideDCIS-HE02

// Block03 Slides: Margins HE (6)
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideMargins-HE01"
* entry[=].resource = BreastResectionSpecimenSlideMargins-HE01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideMargins-HE02"
* entry[=].resource = BreastResectionSpecimenSlideMargins-HE02

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideMargins-HE03"
* entry[=].resource = BreastResectionSpecimenSlideMargins-HE03

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideMargins-HE04"
* entry[=].resource = BreastResectionSpecimenSlideMargins-HE04

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideMargins-HE05"
* entry[=].resource = BreastResectionSpecimenSlideMargins-HE05

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/BreastResectionSpecimenSlideMargins-HE06"
* entry[=].resource = BreastResectionSpecimenSlideMargins-HE06

// --- Macroscopy Observations ---
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMacroscopicGrouper"
* entry[=].resource = BreastResectionMacroscopicGrouper

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMacroLength"
* entry[=].resource = BreastResectionMacroLength

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMacroWidth"
* entry[=].resource = BreastResectionMacroWidth

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMacroDepth"
* entry[=].resource = BreastResectionMacroDepth

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMacroWeight"
* entry[=].resource = BreastResectionMacroWeight

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMacroQuadrant"
* entry[=].resource = BreastResectionMacroQuadrant

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMacroClock"
* entry[=].resource = BreastResectionMacroClock

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMacroDistanceNipple"
* entry[=].resource = BreastResectionMacroDistanceNipple

// --- Diagnostic Conclusion Observations ---
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionDiagnosticConclusionGrouper"
* entry[=].resource = BreastResectionDiagnosticConclusionGrouper

// Allgemein
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionNonInvasiveLesion"
* entry[=].resource = BreastResectionNonInvasiveLesion

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionInvasiveCarcinoma"
* entry[=].resource = BreastResectionInvasiveCarcinoma

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionOperativeProcedure"
* entry[=].resource = BreastResectionOperativeProcedure

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMaterialType"
* entry[=].resource = BreastResectionMaterialType

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionLaterality"
* entry[=].resource = BreastResectionLaterality

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionAttachedTissue"
* entry[=].resource = BreastResectionAttachedTissue

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionFocality"
* entry[=].resource = BreastResectionFocality

// Invasives Karzinom
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMaxDiameterInvasive"
* entry[=].resource = BreastResectionMaxDiameterInvasive

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMaxOverallDiameter"
* entry[=].resource = BreastResectionMaxOverallDiameter

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionHistologicalType"
* entry[=].resource = BreastResectionHistologicalType

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMorphologyFreeText"
* entry[=].resource = BreastResectionMorphologyFreeText

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionNottinghamGrade"
* entry[=].resource = BreastResectionNottinghamGrade

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionTubuleScore"
* entry[=].resource = BreastResectionTubuleScore

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionNuclearPleomorphism"
* entry[=].resource = BreastResectionNuclearPleomorphism

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMitosisCount"
* entry[=].resource = BreastResectionMitosisCount

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMitoticRateScore"
* entry[=].resource = BreastResectionMitoticRateScore

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionElstonEllisScore"
* entry[=].resource = BreastResectionElstonEllisScore

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionAssociatedDCIS"
* entry[=].resource = BreastResectionAssociatedDCIS

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionDCISGrade"
* entry[=].resource = BreastResectionDCISGrade

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionDCISArchitecture"
* entry[=].resource = BreastResectionDCISArchitecture

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionDCISNecrosis"
* entry[=].resource = BreastResectionDCISNecrosis

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionTumorExtent"
* entry[=].resource = BreastResectionTumorExtent

// Resektionsränder
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMarginStatusInvasive"
* entry[=].resource = BreastResectionMarginStatusInvasive

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionClosestMargin"
* entry[=].resource = BreastResectionClosestMargin

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMinDistanceInvasive"
* entry[=].resource = BreastResectionMinDistanceInvasive

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMarginStatusNonInvasive"
* entry[=].resource = BreastResectionMarginStatusNonInvasive

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMinDistanceNonInvasive"
* entry[=].resource = BreastResectionMinDistanceNonInvasive

// Weitere
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionLVI"
* entry[=].resource = BreastResectionLVI

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionMicrocalcification"
* entry[=].resource = BreastResectionMicrocalcification

// Biomarker
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionERStatus"
* entry[=].resource = BreastResectionERStatus

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionERPercentage"
* entry[=].resource = BreastResectionERPercentage

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionERIntensity"
* entry[=].resource = BreastResectionERIntensity

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionPRStatus"
* entry[=].resource = BreastResectionPRStatus

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionPRPercentage"
* entry[=].resource = BreastResectionPRPercentage

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionPRIntensity"
* entry[=].resource = BreastResectionPRIntensity

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionHER2IHC"
* entry[=].resource = BreastResectionHER2IHC

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionHER2ISH"
* entry[=].resource = BreastResectionHER2ISH

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionHER2Overall"
* entry[=].resource = BreastResectionHER2Overall

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionKi67"
* entry[=].resource = BreastResectionKi67

// TNM
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionPT"
* entry[=].resource = BreastResectionPT

// Kommentar
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/BreastResectionComment"
* entry[=].resource = BreastResectionComment

// --- QuestionnaireResponse ---
* entry[+].fullUrl = "http://breastcancerspec.org/QuestionnaireResponse/QuestionnaireResponseBreastResection"
* entry[=].resource = QuestionnaireResponseBreastResection
