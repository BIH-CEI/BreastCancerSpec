// Präoperativer Bildgebungsbefund
Instance: InvasiveCarcinomaResectionImagingReport
InstanceOf: DiagnosticReport
Usage: #example
Title: "Mammografie/MRT-Befund"
Description: "Präoperativer Bildgebungsbefund als SupportingInfo"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#RAD "Radiology"
* code = $loinc#24606-6 "MG Breast Screening"
* subject = Reference(Patient1)
* effectiveDateTime = "2024-06-15"
* conclusion = "BI-RADS 5: Hochgradig malignitätsverdächtig. Irreguläre Raumforderung im oberen äußeren Quadranten rechts, 18mm, mit Mikrokalzifikationen."
