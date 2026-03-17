// Service Request für SLN-Biopsie Axilla
Instance: LymphNodeReportRequest
InstanceOf: MII_PR_Patho_Service_Request
Usage: #example
Title: "SLN-Biopsie Anforderung"
Description: "Anforderung für pathologische Aufarbeitung des Sentinel-Lymphknoten-Exzisats der linken Axilla"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request|2026.0.0"
* status = #completed
* identifier[Placer-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC "Placer Identifier"
* identifier[Placer-ID].system = "http://example.hospital.de/serviceRequest"
* identifier[Placer-ID].value = "PATH-RPT-2025-211"
* intent = #order
* category = $sct#726007 "Pathology consultation, comprehensive, records and specimen with report (procedure)"
* code = $loinc#60568-3 "Pathology synoptic report"
* encounter = Reference(LymphNodeEncounter)
* subject = Reference(Patient4)
* requester = Reference(BreastSurgeonPractitioner)
* performer = Reference(PathologistPractitioner)
* reasonCode = $sct#254838004 "Carcinoma of breast (disorder)"
* specimen = Reference(LymphNodeSpecimenPart)
* supportingInfo[+] = Reference(LymphNodeDiagnosisConfirmed)
* supportingInfo[+] = Reference(LymphNodeImagingReport)
* supportingInfo[+] = Reference(LymphNodeSpecimenLimited)
