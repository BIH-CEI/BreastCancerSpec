// Service Request für Invasives Mammakarzinom Resektion
Instance: InvasiveCarcinomaResectionReportRequest
InstanceOf: MII_PR_Patho_Service_Request
Usage: #example
Title: "Invasives Mammakarzinom Resektion Anforderung"
Description: "Anforderung für pathologische Aufarbeitung nach Lumpektomie bei invasivem Mammakarzinom"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request|2026.0.0"
* status = #completed
* identifier[Placer-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC "Placer ID"
* identifier[Placer-ID].system = "http://example.hospital.de/serviceRequest"
* identifier[Placer-ID].value = "PATH-RPT-2024-101"
* intent = #order
* category = $sct#726007 "Pathology consultation, comprehensive, records and specimen with report (procedure)"
* code = $loinc#60568-3 "Pathology synoptic report"
* encounter = Reference(InvasiveCarcinomaResectionEncounter)
* subject = Reference(Patient1)
* requester = Reference(BreastSurgeonPractitioner)
* performer = Reference(PathologistPractitioner)
* reasonCode = $sct#254837009 "Malignant neoplasm of breast (disorder)"
* specimen = Reference(InvasiveCarcinomaResectionSpecimenPart)
* supportingInfo = Reference(InvasiveCarcinomaResectionDiagnosisPreOp)
