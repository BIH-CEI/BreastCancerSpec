// Service Request für BET Mamma
Instance: BreastResectionReportRequest
InstanceOf: MII_PR_Patho_Service_Request
Usage: #example
Title: "BET Mamma Anforderung"
Description: "Anforderung für pathologische Aufarbeitung eines BET-Exzisionspräparats der linken Mamma"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request|2026.0.0"
* status = #completed
* identifier[Placer-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC "Placer Identifier"
* identifier[Placer-ID].system = "http://example.hospital.de/serviceRequest"
* identifier[Placer-ID].value = "PATH-RPT-2025-210"
* intent = #order
* category = $sct#726007 "Pathology consultation, comprehensive, records and specimen with report (procedure)"
* code = $loinc#60568-3 "Pathology synoptic report"
* encounter = Reference(BreastResectionEncounter)
* subject = Reference(Patient4)
* requester = Reference(BreastSurgeonPractitioner)
* performer = Reference(PathologistPractitioner)
* reasonCode = $sct#254837009 "Malignant neoplasm of breast (disorder)"
* specimen = Reference(BreastResectionSpecimenPart)
* supportingInfo[+] = Reference(BreastResectionDiagnosisConfirmed)
* supportingInfo[+] = Reference(BreastResectionImagingReport)
* supportingInfo[+] = Reference(BreastResectionPresentationMode)
* supportingInfo[+] = Reference(BreastResectionCancerHistory)
* supportingInfo[+] = Reference(BreastResectionPriorTherapy)
* supportingInfo[+] = Reference(BreastResectionRadiologicalExtent)
* supportingInfo[+] = Reference(BreastResectionSpecimenMarking)
* supportingInfo[+] = Reference(BreastResectionSpecimenRadiographyClinical)
* supportingInfo[+] = Reference(BreastResectionGeneticPredisposition)
* supportingInfo[+] = Reference(BreastResectionMacroQuadrant)
* supportingInfo[+] = Reference(BreastResectionMacroClock)
* supportingInfo[+] = Reference(BreastResectionMacroDistanceNipple)
