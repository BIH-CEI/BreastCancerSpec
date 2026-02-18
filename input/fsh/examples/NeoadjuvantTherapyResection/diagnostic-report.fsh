// DiagnosticReport - Neoadjuvante Therapie Resektion
Instance: NeoadjuvantTherapyResectionReport
InstanceOf: $mii-patho-report
Usage: #example
Title: "Pathologiebericht NAT Resektion"
Description: "Pathologiebericht nach Mastektomie bei TNBC nach neoadjuvanter Chemotherapie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report|2026.0.0"
* identifier[Set-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* identifier[Set-ID].system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier[Set-ID].value = "E_24_102"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#SP "Surgical Pathology"
* code = $loinc#60568-3 "Pathology Synoptic report"
* subject = Reference(Patient2)
* basedOn = Reference(NeoadjuvantTherapyResectionReportRequest)
* effectiveDateTime = "2024-09-25T17:00:00+01:00"
* issued = "2024-09-26T08:00:00+01:00"
* performer = Reference(PathologistPractitioner)

* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenBlock01)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenSlide01A)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenSlide01B)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenBlock02)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenSlide02A)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenSlide02B)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenBlock03)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenSlide03A)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenSlide03B)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenBlock04)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenSlide04A)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenSlide04B)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenBlock05)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenSlide05A)
* specimen[+] = Reference(NeoadjuvantTherapyResectionSpecimenSlide05B)

* result[macroscopic-observations] = Reference(NeoadjuvantTherapyResectionMacroscopicGrouper)
* result[diagnostic-conclusion] = Reference(NeoadjuvantTherapyResectionDiagnosticConclusionGrouper)

* conclusion = "Mastektomie-Präparat nach neoadjuvanter Chemotherapie bei triple-negativem Mammakarzinom. Pathologische Komplettremission (pCR): Kein vitales invasives Karzinom, kein residuales DCIS. Tumorbett mit Fibrose und Therapieeffekt. RCB Klasse 0. Resektionsränder frei. ypT0 ypN0, R0."
