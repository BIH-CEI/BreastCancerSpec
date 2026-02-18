// Service Request für DCIS Resektion
Instance: DCISResectionReportRequest
InstanceOf: MII_PR_Patho_Service_Request
Usage: #example
Title: "DCIS Resektion Anforderung"
Description: "Anforderung für pathologische Aufarbeitung nach Wide Local Excision bei DCIS"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request|2026.0.0"
* status = #completed
* identifier[Placer-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC "Placer ID"
* identifier[Placer-ID].system = "http://example.hospital.de/serviceRequest"
* identifier[Placer-ID].value = "PATH-RPT-2024-103"
* intent = #order
* category = $sct#726007 "Pathology consultation, comprehensive, records and specimen with report (procedure)"
* code = $loinc#60568-3 "Pathology synoptic report"
* encounter = Reference(DCISResectionEncounter)
* subject = Reference(Patient3)
* requester = Reference(BreastSurgeonPractitioner)
* performer = Reference(PathologistPractitioner)
* reasonCode = $sct#399935008 "Ductal carcinoma in situ - category"
* specimen = Reference(DCISResectionSpecimenPart)
