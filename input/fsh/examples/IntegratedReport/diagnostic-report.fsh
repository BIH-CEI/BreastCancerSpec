// DiagnosticReport - Integrierter Bericht (BET + SLN)
Instance: IntegratedReport
InstanceOf: $mii-patho-report
Usage: #example
Title: "Pathologiebericht BET + SLN (integriert)"
Description: "Integrierter Pathologiebericht nach BET Mamma links mit SLN-Biopsie Axilla"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report|2026.0.0"
* identifier[Set-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* identifier[Set-ID].system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier[Set-ID].value = "E_25_300"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#SP "Surgical Pathology"
* code = $loinc#60568-3 "Pathology Synoptic report"
* subject = Reference(Patient4)
* basedOn = Reference(IntegratedReportRequest)
* effectiveDateTime = "2025-02-10T14:00:00+01:00"
* issued = "2025-02-10T17:00:00+01:00"
* performer = Reference(PathologistPractitioner)

// BET Specimens
* specimen[+] = Reference(IntegratedBETSpecimenPart)
* specimen[+] = Reference(IntegratedBETSpecimenBlock01)
* specimen[+] = Reference(IntegratedBETSpecimenBlock02)
* specimen[+] = Reference(IntegratedBETSpecimenBlock03)
* specimen[+] = Reference(IntegratedBETSpecimenBlock04)
* specimen[+] = Reference(IntegratedBETSpecimenBlock05)
* specimen[+] = Reference(IntegratedBETSpecimenBlock06)
// Block01 Slides: HE (2), ER, PR, HER2-IHC, Ki67, CK18, p40, E-Cadherin
* specimen[+] = Reference(IntegratedBETSlideHE01)
* specimen[+] = Reference(IntegratedBETSlideHE02)
* specimen[+] = Reference(IntegratedBETSlideER01)
* specimen[+] = Reference(IntegratedBETSlidePR01)
* specimen[+] = Reference(IntegratedBETSlideHER2IHC01)
* specimen[+] = Reference(IntegratedBETSlideKi67-01)
* specimen[+] = Reference(IntegratedBETSlideCK18-01)
* specimen[+] = Reference(IntegratedBETSlidep40-01)
* specimen[+] = Reference(IntegratedBETSlideECad-01)
// Block02 Slides: HE (2)
* specimen[+] = Reference(IntegratedBETSlideBlock02-HE01)
* specimen[+] = Reference(IntegratedBETSlideBlock02-HE02)
// Block03-06 Slides: RR superior, inferior, medial, lateral
* specimen[+] = Reference(IntegratedBETSlideRR-Superior-HE01)
* specimen[+] = Reference(IntegratedBETSlideRR-Inferior-HE01)
* specimen[+] = Reference(IntegratedBETSlideRR-Medial-HE01)
* specimen[+] = Reference(IntegratedBETSlideRR-Lateral-HE01)

// SLN Specimens
* specimen[+] = Reference(IntegratedSLNSpecimenPart)
* specimen[+] = Reference(IntegratedSLNSpecimenBlock01)
* specimen[+] = Reference(IntegratedSLNSpecimenBlock02)
* specimen[+] = Reference(IntegratedSLNSlideHE01)
* specimen[+] = Reference(IntegratedSLNSlideHE02)
* specimen[+] = Reference(IntegratedSLNSlideHE03)
* specimen[+] = Reference(IntegratedSLNSlideHE04)

* result[macroscopic-observations] = Reference(IntegratedMacroscopicGrouper)
* result[diagnostic-conclusion] = Reference(IntegratedDiagnosticConclusionGrouper)

* conclusion = "Invasives Mammakarzinom NST (ICD-O 8500/3), pT1c pN1mi(sn), Nottingham Grad 2 (Score 6: Tubuli 3, Kernpleomorphie 2, Mitosen 1). Begleitendes DCIS, intermediärer Kerngrad, kribriform, fokale Komedo-Nekrosen. Alle Resektionsränder tumorfrei (invasiv 5 mm, DCIS 3 mm). Keine LVI. ER+ (90%), PR+ (60%), HER2 1+ (nicht amplifiziert), Ki-67 15%. SLN 1/2 befallen (Mikrometastase 1,2 mm in SLN #1), keine extranodale Infiltration."
