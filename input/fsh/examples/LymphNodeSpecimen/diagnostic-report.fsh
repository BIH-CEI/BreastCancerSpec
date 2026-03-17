// DiagnosticReport - SLN-Biopsie Axilla
Instance: LymphNodeReport
InstanceOf: $mii-patho-report
Usage: #example
Title: "Pathologiebericht SLN-Biopsie Axilla"
Description: "Pathologiebericht nach Sentinel-Lymphknoten-Biopsie der linken Axilla"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report|2026.0.0"
* identifier[Set-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* identifier[Set-ID].system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier[Set-ID].value = "E_25_211"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#SP "Surgical Pathology"
* code = $loinc#60568-3 "Pathology Synoptic report"
* subject = Reference(Patient4)
* basedOn = Reference(LymphNodeReportRequest)
* effectiveDateTime = "2025-02-10T14:00:00+01:00"
* issued = "2025-02-10T17:00:00+01:00"
* performer = Reference(PathologistPractitioner)

* specimen[+] = Reference(LymphNodeSpecimenPart)
* specimen[+] = Reference(LymphNodeSpecimenBlock01)
* specimen[+] = Reference(LymphNodeSpecimenBlock02)
* specimen[+] = Reference(LymphNodeSpecimenSlideHE01)
* specimen[+] = Reference(LymphNodeSpecimenSlideHE02)
* specimen[+] = Reference(LymphNodeSpecimenSlideHE03)
* specimen[+] = Reference(LymphNodeSpecimenSlideHE04)

* result[macroscopic-observations] = Reference(LymphNodeMacroscopicGrouper)
* result[diagnostic-conclusion] = Reference(LymphNodeDiagnosticConclusionGrouper)

* conclusion = "Sentinel-Lymphknoten-Biopsie linke Axilla: 2 SLN untersucht, 1x Mikrometastase (1,2 mm) in SLN #1, 1x tumorfrei (SLN #2). Keine extranodale Infiltration. pN1mi(sn)."
