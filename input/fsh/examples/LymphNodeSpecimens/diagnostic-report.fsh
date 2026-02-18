// DiagnosticReport - Lymphknoten Specimens
Instance: LymphNodeSpecimensReport
InstanceOf: $mii-patho-report
Usage: #example
Title: "Pathologiebericht Lymphknoten Specimens"
Description: "Pathologiebericht der Sentinel-Lymphknoten-Biopsie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report|2026.0.0"
* identifier[Set-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* identifier[Set-ID].system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier[Set-ID].value = "E_24_104"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#SP "Surgical Pathology"
* code = $loinc#60568-3 "Pathology Synoptic report"
* subject = Reference(Patient1)
* basedOn = Reference(LymphNodeSpecimensReportRequest)
* effectiveDateTime = "2024-07-19T17:00:00+01:00"
* issued = "2024-07-20T08:00:00+01:00"
* performer = Reference(PathologistPractitioner)

* specimen[+] = Reference(LymphNodeSpecimensSpecimenPartSLN1)
* specimen[+] = Reference(LymphNodeSpecimensSpecimenBlock01)
* specimen[+] = Reference(LymphNodeSpecimensSpecimenSlide01HE)
* specimen[+] = Reference(LymphNodeSpecimensSpecimenSlide01IHC)
* specimen[+] = Reference(LymphNodeSpecimensSpecimenPartSLN2)
* specimen[+] = Reference(LymphNodeSpecimensSpecimenBlock02)
* specimen[+] = Reference(LymphNodeSpecimensSpecimenSlide02HE)
* specimen[+] = Reference(LymphNodeSpecimensSpecimenSlide02IHC)

* result[macroscopic-observations] = Reference(LymphNodeSpecimensMacroscopicGrouper)
* result[diagnostic-conclusion] = Reference(LymphNodeSpecimensDiagnosticConclusionGrouper)

* conclusion = "2 Sentinel-Lymphknoten aus der rechten Axilla, beide tumorfrei. Keine isolierten Tumorzellen, keine Mikro- oder Makrometastasen. Panzytokeratin-IHC negativ. pN0(sn)."
