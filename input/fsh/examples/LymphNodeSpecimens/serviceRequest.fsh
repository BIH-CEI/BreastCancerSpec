// Service Request für Lymph Node Specimens
Instance: LymphNodeSpecimensReportRequest
InstanceOf: MII_PR_Patho_Service_Request
Usage: #example
Title: "Lymphknoten Specimens Anforderung"
Description: "Anforderung für pathologische Aufarbeitung der Sentinel-Lymphknoten bei Mammakarzinom"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request|2026.0.0"
* status = #completed
* identifier[Placer-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC "Placer ID"
* identifier[Placer-ID].system = "http://example.hospital.de/serviceRequest"
* identifier[Placer-ID].value = "PATH-RPT-2024-104"
* intent = #order
* category = $sct#726007 "Pathology consultation, comprehensive, records and specimen with report (procedure)"
* code = $loinc#60568-3 "Pathology synoptic report"
* encounter = Reference(LymphNodeSpecimensEncounter)
* subject = Reference(Patient1)
* requester = Reference(BreastSurgeonPractitioner)
* performer = Reference(PathologistPractitioner)
* reasonCode = $sct#254837009 "Malignant neoplasm of breast (disorder)"
* reasonCode.text = "Sentinel-Lymphknoten-Biopsie bei invasivem Mammakarzinom"
* specimen[+] = Reference(LymphNodeSpecimensSpecimenPartSLN1)
* specimen[+] = Reference(LymphNodeSpecimensSpecimenPartSLN2)
* supportingInfo = Reference(InvasiveCarcinomaResectionDiagnosisPreOp)
