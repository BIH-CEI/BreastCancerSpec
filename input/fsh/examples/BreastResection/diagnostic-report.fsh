// DiagnosticReport - BET Mamma
Instance: BreastResectionReport
InstanceOf: $mii-patho-report
Usage: #example
Title: "Pathologiebericht BET Mamma"
Description: "Pathologiebericht nach brusterhaltender Therapie der linken Mamma"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report|2026.0.0"
* identifier[Set-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* identifier[Set-ID].system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier[Set-ID].value = "E_25_210"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#SP "Surgical Pathology"
* code = $loinc#60568-3 "Pathology Synoptic report"
* subject = Reference(Patient4)
* basedOn = Reference(BreastResectionReportRequest)
* effectiveDateTime = "2025-02-10T14:00:00+01:00"
* issued = "2025-02-10T17:00:00+01:00"
* performer = Reference(PathologistPractitioner)

* specimen[+] = Reference(BreastResectionSpecimenPart)
* specimen[+] = Reference(BreastResectionSpecimenBlock01)
* specimen[+] = Reference(BreastResectionSpecimenBlock02)
* specimen[+] = Reference(BreastResectionSpecimenBlock03)
* specimen[+] = Reference(BreastResectionSpecimenBlock04)
* specimen[+] = Reference(BreastResectionSpecimenBlock05)
* specimen[+] = Reference(BreastResectionSpecimenBlock06)
// Block01 Slides: HE (2), ER, PR, HER2-IHC, Ki67, CK18, p40, E-Cadherin
* specimen[+] = Reference(BreastResectionSpecimenSlideHE01)
* specimen[+] = Reference(BreastResectionSpecimenSlideHE02)
* specimen[+] = Reference(BreastResectionSpecimenSlideER01)
* specimen[+] = Reference(BreastResectionSpecimenSlidePR01)
* specimen[+] = Reference(BreastResectionSpecimenSlideHER2IHC01)
* specimen[+] = Reference(BreastResectionSpecimenSlideKi67-01)
* specimen[+] = Reference(BreastResectionSpecimenSlideCK18-01)
* specimen[+] = Reference(BreastResectionSpecimenSlidep40-01)
* specimen[+] = Reference(BreastResectionSpecimenSlideECad-01)
// Block02 Slides: HE (2)
* specimen[+] = Reference(BreastResectionSpecimenSlideBlock02-HE01)
* specimen[+] = Reference(BreastResectionSpecimenSlideBlock02-HE02)
// Block03-06 Slides: RR superior, inferior, medial, lateral
* specimen[+] = Reference(BreastResectionSpecimenSlideRR-Superior-HE01)
* specimen[+] = Reference(BreastResectionSpecimenSlideRR-Inferior-HE01)
* specimen[+] = Reference(BreastResectionSpecimenSlideRR-Medial-HE01)
* specimen[+] = Reference(BreastResectionSpecimenSlideRR-Lateral-HE01)

* result[macroscopic-observations] = Reference(BreastResectionMacroscopicGrouper)
* result[diagnostic-conclusion] = Reference(BreastResectionDiagnosticConclusionGrouper)

* conclusion = "Invasives Mammakarzinom NST (ICD-O 8500/3), pT1c, Nottingham Grad 2 (Score 6: Tubuli 3, Kernpleomorphie 2, Mitosen 1). Begleitendes DCIS, intermediärer Kerngrad, kribriform, fokale Komedo-Nekrosen. Alle Resektionsränder tumorfrei (invasiv 5 mm, DCIS 3 mm). Keine LVI. ER+ (90%), PR+ (60%), HER2 1+ (nicht amplifiziert), Ki-67 15%."
