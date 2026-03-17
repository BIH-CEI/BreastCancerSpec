// =============================================================================
// SUPPORTING INFO - SLN-BIOPSIE AXILLA
// =============================================================================

// Bildgebungsbefund
Instance: LymphNodeImagingReport
InstanceOf: DiagnosticReport
Usage: #example
Title: "Bildgebungsbefund SLN-Biopsie"
Description: "Bildgebungsbefund als SupportingInfo für die SLN-Biopsie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#RAD "Radiology"
* code = $loinc#24606-6 "MG Breast Screening"
* subject = Reference(Patient4)
* effectiveDateTime = "2025-01-08"
* conclusion = "Mammografie und Sonographie: Klinisch unauffällige Axilla links (cN0). Kein Hinweis auf pathologische axilläre Lymphknoten."

// --- Proben limitiert auswertbar (linkId 11951) ---
Instance: LymphNodeSpecimenLimited
InstanceOf: Observation
Usage: #example
Title: "Proben limitiert auswertbar - SLN"
Description: "Angabe ob die Probe limitiert auswertbar ist"
* status = #final
* code = $sct#125156009 "Satisfactory for evaluation but limited by lack of pertinent clinical patient information (finding)"
* code.text = "Proben limitiert auswertbar wegen fehlender klinischer Informationen"
* subject = Reference(Patient4)
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"
