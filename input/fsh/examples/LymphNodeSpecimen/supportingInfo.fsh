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
