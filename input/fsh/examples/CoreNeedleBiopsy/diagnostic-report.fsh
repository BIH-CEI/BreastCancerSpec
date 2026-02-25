// DiagnosticReport - Stanzbiopsie
Instance: CoreNeedleBiopsyReport
InstanceOf: $mii-patho-report
Usage: #example
Title: "Pathologiebericht Stanzbiopsie Mamma"
Description: "Pathologiebericht nach US-gestützter Stanzbiopsie der linken Mamma"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report|2026.0.0"
* identifier[Set-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* identifier[Set-ID].system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier[Set-ID].value = "E_25_105"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#SP "Surgical Pathology"
* code = $loinc#60568-3 "Pathology Synoptic report"
* subject = Reference(Patient4)
* basedOn = Reference(CoreNeedleBiopsyReportRequest)
* effectiveDateTime = "2025-01-17T15:00:00+01:00"
* issued = "2025-01-17T17:00:00+01:00"
* performer = Reference(PathologistPractitioner)

* specimen[+] = Reference(CoreNeedleBiopsySpecimenPart)
* specimen[+] = Reference(CoreNeedleBiopsySpecimenBlock01)
* specimen[+] = Reference(CoreNeedleBiopsySpecimenSlideHE)
* specimen[+] = Reference(CoreNeedleBiopsySpecimenSlideER)
* specimen[+] = Reference(CoreNeedleBiopsySpecimenSlidePR)
* specimen[+] = Reference(CoreNeedleBiopsySpecimenSlideHER2)
* specimen[+] = Reference(CoreNeedleBiopsySpecimenSlideKi67)

* result[macroscopic-observations] = Reference(CoreNeedleBiopsyMacroscopicGrouper)
* result[diagnostic-conclusion] = Reference(CoreNeedleBiopsyDiagnosticConclusionGrouper)

* conclusion = "Invasives Mammakarzinom NST (ICD-O 8500/3), Nottingham Grad 2 (Score 6: Tubuli 3, Kernpleomorphie 2, Mitosen 1). ER+ (85%), PR+ (50%), HER2- (nicht amplifiziert), Ki-67 10%. B-Klassifikation B5b."
