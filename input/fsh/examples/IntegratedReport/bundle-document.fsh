// ============================================================================
// DOCUMENT BUNDLE - INTEGRIERTER BERICHT (BET + SLN)
// ============================================================================

Instance: IntegratedDocument
InstanceOf: Bundle
Usage: #example
Title: "Document Bundle - Integrierter Bericht (BET + SLN)"
Description: "FHIR Document Bundle für den integrierten Befundbericht BET Mamma links mit SLN-Biopsie Axilla"
* type = #document
* identifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier.value = "E_25_004"
* timestamp = "2025-02-10T17:00:00+01:00"

// --- Composition (must be first) ---
* entry[+].fullUrl = "http://breastcancerspec.org/Composition/IntegratedComposition"
* entry[=].resource = IntegratedComposition

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
* entry[+].fullUrl = "http://breastcancerspec.org/Encounter/IntegratedEncounter"
* entry[=].resource = IntegratedEncounter

// --- Condition (Diagnosis) ---
* entry[+].fullUrl = "http://breastcancerspec.org/Condition/IntegratedDiagnosisConfirmed"
* entry[=].resource = IntegratedDiagnosisConfirmed

// --- ServiceRequest ---
* entry[+].fullUrl = "http://breastcancerspec.org/ServiceRequest/IntegratedReportRequest"
* entry[=].resource = IntegratedReportRequest

// --- SupportingInfo: Imaging DiagnosticReport ---
* entry[+].fullUrl = "http://breastcancerspec.org/DiagnosticReport/IntegratedImagingReport"
* entry[=].resource = IntegratedImagingReport

// --- SupportingInfo: Clinical Observations ---
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedSpecimenLimited"
* entry[=].resource = IntegratedSpecimenLimited

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedPresentationMode"
* entry[=].resource = IntegratedPresentationMode

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedCancerHistory"
* entry[=].resource = IntegratedCancerHistory

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedPriorTherapy"
* entry[=].resource = IntegratedPriorTherapy

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedRadiologicalExtent"
* entry[=].resource = IntegratedRadiologicalExtent

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedSpecimenMarking"
* entry[=].resource = IntegratedSpecimenMarking

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedSpecimenRadiographyClinical"
* entry[=].resource = IntegratedSpecimenRadiographyClinical

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedGeneticPredisposition"
* entry[=].resource = IntegratedGeneticPredisposition

// --- DiagnosticReport (Pathology) ---
* entry[+].fullUrl = "http://breastcancerspec.org/DiagnosticReport/IntegratedReport"
* entry[=].resource = IntegratedReport

// --- BET Specimens ---
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSpecimenPart"
* entry[=].resource = IntegratedBETSpecimenPart

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSpecimenBlock01"
* entry[=].resource = IntegratedBETSpecimenBlock01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSpecimenBlock02"
* entry[=].resource = IntegratedBETSpecimenBlock02

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSpecimenBlock03"
* entry[=].resource = IntegratedBETSpecimenBlock03

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSpecimenBlock04"
* entry[=].resource = IntegratedBETSpecimenBlock04

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSpecimenBlock05"
* entry[=].resource = IntegratedBETSpecimenBlock05

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSpecimenBlock06"
* entry[=].resource = IntegratedBETSpecimenBlock06

// Block01 Slides
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlideHE01"
* entry[=].resource = IntegratedBETSlideHE01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlideHE02"
* entry[=].resource = IntegratedBETSlideHE02

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlideER01"
* entry[=].resource = IntegratedBETSlideER01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlidePR01"
* entry[=].resource = IntegratedBETSlidePR01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlideHER2IHC01"
* entry[=].resource = IntegratedBETSlideHER2IHC01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlideKi67-01"
* entry[=].resource = IntegratedBETSlideKi67-01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlideCK18-01"
* entry[=].resource = IntegratedBETSlideCK18-01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlidep40-01"
* entry[=].resource = IntegratedBETSlidep40-01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlideECad-01"
* entry[=].resource = IntegratedBETSlideECad-01

// Block02 Slides
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlideBlock02-HE01"
* entry[=].resource = IntegratedBETSlideBlock02-HE01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlideBlock02-HE02"
* entry[=].resource = IntegratedBETSlideBlock02-HE02

// Block03-06 Slides
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlideRR-Superior-HE01"
* entry[=].resource = IntegratedBETSlideRR-Superior-HE01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlideRR-Inferior-HE01"
* entry[=].resource = IntegratedBETSlideRR-Inferior-HE01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlideRR-Medial-HE01"
* entry[=].resource = IntegratedBETSlideRR-Medial-HE01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedBETSlideRR-Lateral-HE01"
* entry[=].resource = IntegratedBETSlideRR-Lateral-HE01

// --- SLN Specimens ---
* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedSLNSpecimenPart"
* entry[=].resource = IntegratedSLNSpecimenPart

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedSLNSpecimenBlock01"
* entry[=].resource = IntegratedSLNSpecimenBlock01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedSLNSpecimenBlock02"
* entry[=].resource = IntegratedSLNSpecimenBlock02

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedSLNSlideHE01"
* entry[=].resource = IntegratedSLNSlideHE01

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedSLNSlideHE02"
* entry[=].resource = IntegratedSLNSlideHE02

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedSLNSlideHE03"
* entry[=].resource = IntegratedSLNSlideHE03

* entry[+].fullUrl = "http://breastcancerspec.org/Specimen/IntegratedSLNSlideHE04"
* entry[=].resource = IntegratedSLNSlideHE04

// --- Substances ---
* entry[+].fullUrl = "http://breastcancerspec.org/Substance/IntegratedSubstanceER"
* entry[=].resource = IntegratedSubstanceER

* entry[+].fullUrl = "http://breastcancerspec.org/Substance/IntegratedSubstancePR"
* entry[=].resource = IntegratedSubstancePR

* entry[+].fullUrl = "http://breastcancerspec.org/Substance/IntegratedSubstanceHER2IHC"
* entry[=].resource = IntegratedSubstanceHER2IHC

* entry[+].fullUrl = "http://breastcancerspec.org/Substance/IntegratedSubstanceKi67"
* entry[=].resource = IntegratedSubstanceKi67

* entry[+].fullUrl = "http://breastcancerspec.org/Substance/IntegratedSubstanceCK18"
* entry[=].resource = IntegratedSubstanceCK18

* entry[+].fullUrl = "http://breastcancerspec.org/Substance/IntegratedSubstancep40"
* entry[=].resource = IntegratedSubstancep40

* entry[+].fullUrl = "http://breastcancerspec.org/Substance/IntegratedSubstanceECadherin"
* entry[=].resource = IntegratedSubstanceECadherin

// --- Macroscopy Observations ---
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMacroscopicGrouper"
* entry[=].resource = IntegratedMacroscopicGrouper

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMacroLength"
* entry[=].resource = IntegratedMacroLength

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMacroWidth"
* entry[=].resource = IntegratedMacroWidth

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMacroDepth"
* entry[=].resource = IntegratedMacroDepth

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMacroWeight"
* entry[=].resource = IntegratedMacroWeight

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMacroQuadrant"
* entry[=].resource = IntegratedMacroQuadrant

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMacroClock"
* entry[=].resource = IntegratedMacroClock

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMacroDistanceNipple"
* entry[=].resource = IntegratedMacroDistanceNipple

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMacroBlockCount"
* entry[=].resource = IntegratedMacroBlockCount

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMacroSLN1Size"
* entry[=].resource = IntegratedMacroSLN1Size

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMacroSLN2Size"
* entry[=].resource = IntegratedMacroSLN2Size

// --- Diagnostic Conclusion Observations ---
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedDiagnosticConclusionGrouper"
* entry[=].resource = IntegratedDiagnosticConclusionGrouper

// BET - Allgemein
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedNonInvasiveLesion"
* entry[=].resource = IntegratedNonInvasiveLesion

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedInvasiveCarcinoma"
* entry[=].resource = IntegratedInvasiveCarcinoma

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedOperativeProcedure"
* entry[=].resource = IntegratedOperativeProcedure

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMaterialType"
* entry[=].resource = IntegratedMaterialType

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedLaterality"
* entry[=].resource = IntegratedLaterality

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedAttachedTissue"
* entry[=].resource = IntegratedAttachedTissue

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedFocality"
* entry[=].resource = IntegratedFocality

// BET - Invasives Karzinom
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMaxDiameterInvasive"
* entry[=].resource = IntegratedMaxDiameterInvasive

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMaxOverallDiameter"
* entry[=].resource = IntegratedMaxOverallDiameter

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedHistologicalType"
* entry[=].resource = IntegratedHistologicalType

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMorphologyFreeText"
* entry[=].resource = IntegratedMorphologyFreeText

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedNottinghamGrade"
* entry[=].resource = IntegratedNottinghamGrade

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedTubuleScore"
* entry[=].resource = IntegratedTubuleScore

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedNuclearPleomorphism"
* entry[=].resource = IntegratedNuclearPleomorphism

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMitosisCount"
* entry[=].resource = IntegratedMitosisCount

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMitoticRateScore"
* entry[=].resource = IntegratedMitoticRateScore

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedElstonEllisScore"
* entry[=].resource = IntegratedElstonEllisScore

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedAssociatedDCIS"
* entry[=].resource = IntegratedAssociatedDCIS

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedDCISGrade"
* entry[=].resource = IntegratedDCISGrade

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedDCISArchitecture"
* entry[=].resource = IntegratedDCISArchitecture

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedDCISNecrosis"
* entry[=].resource = IntegratedDCISNecrosis

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedTumorExtent"
* entry[=].resource = IntegratedTumorExtent

// BET - Resektionsränder
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMarginStatusInvasive"
* entry[=].resource = IntegratedMarginStatusInvasive

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedClosestMargin"
* entry[=].resource = IntegratedClosestMargin

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMinDistanceInvasive"
* entry[=].resource = IntegratedMinDistanceInvasive

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMarginStatusNonInvasive"
* entry[=].resource = IntegratedMarginStatusNonInvasive

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMinDistanceNonInvasive"
* entry[=].resource = IntegratedMinDistanceNonInvasive

// BET - Weitere
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedLVI"
* entry[=].resource = IntegratedLVI

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMicrocalcification"
* entry[=].resource = IntegratedMicrocalcification

// BET - Biomarker
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedERStatus"
* entry[=].resource = IntegratedERStatus

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedERPercentage"
* entry[=].resource = IntegratedERPercentage

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedERIntensity"
* entry[=].resource = IntegratedERIntensity

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedPRStatus"
* entry[=].resource = IntegratedPRStatus

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedPRPercentage"
* entry[=].resource = IntegratedPRPercentage

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedPRIntensity"
* entry[=].resource = IntegratedPRIntensity

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedHER2IHC"
* entry[=].resource = IntegratedHER2IHC

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedHER2ISH"
* entry[=].resource = IntegratedHER2ISH

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedHER2Overall"
* entry[=].resource = IntegratedHER2Overall

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedKi67"
* entry[=].resource = IntegratedKi67

// BET - TNM
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedPT"
* entry[=].resource = IntegratedPT

// BET - Kommentar
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedBETComment"
* entry[=].resource = IntegratedBETComment

// SLN - Diagnostic Conclusion Findings
* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedLymphNodeProcedure"
* entry[=].resource = IntegratedLymphNodeProcedure

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedLymphNodeLaterality"
* entry[=].resource = IntegratedLymphNodeLaterality

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedNonSLNExamined"
* entry[=].resource = IntegratedNonSLNExamined

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedNonSLNPositive"
* entry[=].resource = IntegratedNonSLNPositive

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedSLNExamined"
* entry[=].resource = IntegratedSLNExamined

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedSLNPositive"
* entry[=].resource = IntegratedSLNPositive

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedTotalExamined"
* entry[=].resource = IntegratedTotalExamined

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedTotalPositive"
* entry[=].resource = IntegratedTotalPositive

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMacroMetCount"
* entry[=].resource = IntegratedMacroMetCount

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedMicroMetCount"
* entry[=].resource = IntegratedMicroMetCount

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedITCCount"
* entry[=].resource = IntegratedITCCount

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedLargestMetSize"
* entry[=].resource = IntegratedLargestMetSize

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedExtranodalExtension"
* entry[=].resource = IntegratedExtranodalExtension

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedPN"
* entry[=].resource = IntegratedPN

* entry[+].fullUrl = "http://breastcancerspec.org/Observation/IntegratedSLNComment"
* entry[=].resource = IntegratedSLNComment

// --- QuestionnaireResponses ---
* entry[+].fullUrl = "http://breastcancerspec.org/QuestionnaireResponse/IntegratedQRBreastResection"
* entry[=].resource = IntegratedQRBreastResection

* entry[+].fullUrl = "http://breastcancerspec.org/QuestionnaireResponse/IntegratedQRLymphNode"
* entry[=].resource = IntegratedQRLymphNode
