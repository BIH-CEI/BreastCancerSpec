// Service Request für integrierten Bericht (BET + SLN)
Instance: IntegratedReportRequest
InstanceOf: MII_PR_Patho_Service_Request
Usage: #example
Title: "BET + SLN Anforderung (integriert)"
Description: "Anforderung für pathologische Aufarbeitung des BET-Exzisionspräparats und SLN-Exzisats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request|2026.0.0"
* status = #completed
* identifier[Placer-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC "Placer Identifier"
* identifier[Placer-ID].system = "http://example.hospital.de/serviceRequest"
* identifier[Placer-ID].value = "PATH-RPT-2025-300"
* intent = #order
* category = $sct#726007 "Pathology consultation, comprehensive, records and specimen with report (procedure)"
* code = $loinc#60568-3 "Pathology synoptic report"
* encounter = Reference(IntegratedEncounter)
* subject = Reference(Patient4)
* requester = Reference(BreastSurgeonPractitioner)
* performer = Reference(PathologistPractitioner)
* reasonCode = $sct#254837009 "Malignant neoplasm of breast (disorder)"
* specimen[+] = Reference(IntegratedBETSpecimenPart)
* specimen[+] = Reference(IntegratedSLNSpecimenPart)
* supportingInfo[+] = Reference(IntegratedDiagnosisConfirmed)
* supportingInfo[+] = Reference(IntegratedImagingReport)
* supportingInfo[+] = Reference(IntegratedSpecimenLimited)
* supportingInfo[+] = Reference(IntegratedPresentationMode)
* supportingInfo[+] = Reference(IntegratedCancerHistory)
* supportingInfo[+] = Reference(IntegratedPriorTherapy)
* supportingInfo[+] = Reference(IntegratedRadiologicalExtent)
* supportingInfo[+] = Reference(IntegratedSpecimenMarking)
* supportingInfo[+] = Reference(IntegratedSpecimenRadiographyClinical)
* supportingInfo[+] = Reference(IntegratedGeneticPredisposition)
