// DiagnosticReport - Invasives Karzinom Resektion
Instance: InvasiveCarcinomaResectionReport
InstanceOf: $mii-patho-report
Usage: #example
Title: "Pathologiebericht Invasives Karzinom Resektion"
Description: "Pathologiebericht nach Lumpektomie bei invasivem Mammakarzinom"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report|2026.0.0"
* identifier[Set-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* identifier[Set-ID].system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier[Set-ID].value = "E_24_101"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#SP "Surgical Pathology"
* code = $loinc#60568-3 "Pathology Synoptic report"
* subject = Reference(Patient1)
* basedOn = Reference(InvasiveCarcinomaResectionReportRequest)
* effectiveDateTime = "2024-07-19T17:00:00+01:00"
* issued = "2024-07-20T08:00:00+01:00"
* performer = Reference(PathologistPractitioner)

* specimen[+] = Reference(InvasiveCarcinomaResectionSpecimenPart)
* specimen[+] = Reference(InvasiveCarcinomaResectionSpecimenBlock01)
* specimen[+] = Reference(InvasiveCarcinomaResectionSpecimenSlide01A)
* specimen[+] = Reference(InvasiveCarcinomaResectionSpecimenSlide01B)
* specimen[+] = Reference(InvasiveCarcinomaResectionSpecimenBlock02)
* specimen[+] = Reference(InvasiveCarcinomaResectionSpecimenSlide02A)
* specimen[+] = Reference(InvasiveCarcinomaResectionSpecimenSlide02B)
* specimen[+] = Reference(InvasiveCarcinomaResectionSpecimenBlock03)
* specimen[+] = Reference(InvasiveCarcinomaResectionSpecimenSlide03A)
* specimen[+] = Reference(InvasiveCarcinomaResectionSpecimenSlide03B)

* result[macroscopic-observations] = Reference(InvasiveCarcinomaResectionMacroscopicGrouper)
* result[diagnostic-conclusion] = Reference(InvasiveCarcinomaResectionDiagnosticConclusionGrouper)

* conclusion = "Invasives Karzinom NST (ICD-O 8500/3), Nottingham Grad 2, pT1c pN0(sn) M0, R0. ER+ (90%), PR+ (60%), HER2- (IHC 1+), Ki-67 15%. Tumorgröße 18mm, begleitendes DCIS 5mm. Resektionsränder frei, nächster Rand 5mm. Keine LVSI, keine perineurale Invasion."
