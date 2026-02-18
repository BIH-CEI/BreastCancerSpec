// DiagnosticReport - DCIS Resektion
Instance: DCISResectionReport
InstanceOf: $mii-patho-report
Usage: #example
Title: "Pathologiebericht DCIS Resektion"
Description: "Pathologiebericht nach Wide Local Excision bei DCIS"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report|2026.0.0"
* identifier[Set-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* identifier[Set-ID].system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier[Set-ID].value = "E_24_103"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#SP "Surgical Pathology"
* code = $loinc#60568-3 "Pathology Synoptic report"
* subject = Reference(Patient3)
* basedOn = Reference(DCISResectionReportRequest)
* effectiveDateTime = "2024-06-14T17:00:00+01:00"
* issued = "2024-06-15T08:00:00+01:00"
* performer = Reference(PathologistPractitioner)

* specimen[+] = Reference(DCISResectionSpecimenPart)
* specimen[+] = Reference(DCISResectionSpecimenBlock01)
* specimen[+] = Reference(DCISResectionSpecimenSlide01)
* specimen[+] = Reference(DCISResectionSpecimenBlock02)
* specimen[+] = Reference(DCISResectionSpecimenSlide02)
* specimen[+] = Reference(DCISResectionSpecimenBlock03)
* specimen[+] = Reference(DCISResectionSpecimenSlide03)
* specimen[+] = Reference(DCISResectionSpecimenBlock04)
* specimen[+] = Reference(DCISResectionSpecimenSlide04)

* result[macroscopic-observations] = Reference(DCISResectionMacroscopicGrouper)
* result[diagnostic-conclusion] = Reference(DCISResectionDiagnosticConclusionGrouper)

* conclusion = "Duktales Carcinoma in situ (DCIS), high-grade, Comedo-Typ (ICD-O 8500/2). Nukleärer Grad 3 mit Comedo-Nekrose. DCIS-Ausdehnung 25 mm. Resektionsränder frei, nächster Rand 3 mm. Kalzifikationen vorhanden. Keine Mikroinvasion, keine begleitende lobuläre Neoplasie."
