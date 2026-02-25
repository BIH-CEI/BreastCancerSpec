// Bildgebungsbefund Mammografie/Ultraschall
Instance: CoreNeedleBiopsyImagingReport
InstanceOf: DiagnosticReport
Usage: #example
Title: "Mammografie/Ultraschall-Befund"
Description: "Bildgebungsbefund als SupportingInfo für die Stanzbiopsie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#RAD "Radiology"
* code = $loinc#24606-6 "MG Breast Screening"
* subject = Reference(Patient4)
* effectiveDateTime = "2025-01-08"
* conclusion = "BI-RADS 4b: Herdbefund/Architekturstörung linke Brust, 5 Uhr, 5 cm von Mamille. Indikation zur histologischen Abklärung mittels Stanzbiopsie."
