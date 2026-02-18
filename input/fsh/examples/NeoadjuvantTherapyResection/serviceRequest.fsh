// Service Request für Neoadjuvante Therapie Resektion
Instance: NeoadjuvantTherapyResectionReportRequest
InstanceOf: MII_PR_Patho_Service_Request
Usage: #example
Title: "Neoadjuvante Therapie Resektion Anforderung"
Description: "Anforderung für pathologische Aufarbeitung nach Mastektomie bei TNBC nach neoadjuvanter Chemotherapie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request|2026.0.0"
* status = #completed
* identifier[Placer-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC "Placer ID"
* identifier[Placer-ID].system = "http://example.hospital.de/serviceRequest"
* identifier[Placer-ID].value = "PATH-RPT-2024-102"
* intent = #order
* category = $sct#726007 "Pathology consultation, comprehensive, records and specimen with report (procedure)"
* code = $loinc#60568-3 "Pathology synoptic report"
* encounter = Reference(NeoadjuvantTherapyResectionEncounter)
* subject = Reference(Patient2)
* requester = Reference(BreastSurgeonPractitioner)
* performer = Reference(PathologistPractitioner)
* reasonCode = $sct#254837009 "Malignant neoplasm of breast (disorder)"
* reasonCode.text = "Triple-negatives Mammakarzinom nach neoadjuvanter Chemotherapie"
* specimen = Reference(NeoadjuvantTherapyResectionSpecimenPart)
* supportingInfo = Reference(NeoadjuvantTherapyResectionDiagnosisPreOp)
