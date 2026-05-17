// =============================================================================
// SUPPORTING INFO - INTEGRIERTER BERICHT (BET + SLN)
// =============================================================================

// Bildgebungsbefund Mammografie + Ultraschall
Instance: IntegratedImagingReport
InstanceOf: DiagnosticReport
Usage: #example
Title: "Mammografie/Ultraschall-Befund (integriert)"
Description: "Bildgebungsbefund als SupportingInfo für den integrierten Bericht"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#RAD "Radiology"
* code = $loinc#24606-6 "MG Breast Screening"
* subject = Reference(Patient4)
* effectiveDateTime = "2025-01-08"
* conclusion = "BI-RADS 4b: Herdbefund linke Brust, unterer äußerer Quadrant, 5 Uhr, 5 cm von Mamille. Radiologische Ausdehnung ca. 15 mm. Mammografie und Ultraschall. Klinisch unauffällige Axilla (cN0). Indikation zur BET mit SLN-Biopsie."

// --- 1. Brustkrebsvorgeschichte (linkId 11923) ---
Instance: IntegratedCancerHistory
InstanceOf: Observation
Usage: #example
Title: "Brustkrebsvorgeschichte (integriert)"
Description: "Anamnese hinsichtlich Brustkrebsvorgeschichte"
* status = #final
* code = $sct#415076002 "Personal history of primary malignant neoplasm of breast (situation)"
* code.text = "Brustkrebsvorgeschichte"
* subject = Reference(Patient4)
* valueCodeableConcept.text = "Ersterkrankung"

// --- 4. Vorchirurgische Therapie (linkId 11952) ---
Instance: IntegratedPriorTherapy
InstanceOf: Observation
Usage: #example
Title: "Vorchirurgische Therapie (integriert)"
Description: "Angabe zur neoadjuvanten/vorchirurgischen Therapie"
* status = #final
* code = $loinc#81167-9 "Cancer treatment --preoperative"
* code.text = "Vorchirurgische Therapie bei invasivem Karzinom"
* subject = Reference(Patient4)
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"
* valueCodeableConcept.text = "Keine neoadjuvante Therapie"

// --- 5. Radiologische Ausdehnung (linkId 11953) ---
Instance: IntegratedRadiologicalExtent
InstanceOf: Observation
Usage: #example
Title: "Radiologische Ausdehnung (integriert)"
Description: "Radiologisch gemessene Ausdehnung des Tumors"
* status = #final
* code = $sct#396361002 "Lesion size, largest dimension (observable entity)"
* code.text = "Radiologische Ausdehnung"
* subject = Reference(Patient4)
* valueQuantity = 15 'mm' "mm"

// --- 6. Befundmarkierung (linkId 10160) ---
Instance: IntegratedSpecimenMarking
InstanceOf: Observation
Usage: #example
Title: "Befundmarkierung (integriert)"
Description: "Art der Befundmarkierung am Präparat"
* status = #final
* code = $sct#836381000000102 "Insertion of marker into breast using X-ray guidance (procedure)"
* code.text = "Befundmarkierung"
* subject = Reference(Patient4)
* valueCodeableConcept.text = "Drahthäkchen"

// --- 7. Präparateradiographie klinisch (linkId 10130) ---
Instance: IntegratedSpecimenRadiographyClinical
InstanceOf: Observation
Usage: #example
Title: "Präparateradiographie klinisch (integriert)"
Description: "Angabe ob eine Präparateradiographie beigelegt wurde"
* status = #final
* code = $sct#"80865008:363702006=185008008" "80865008|Specimen mammography|:363702006|Has focus|=185008008|Medical reports sent|"
* code.text = "Präparateradiographie beigelegt"
* subject = Reference(Patient4)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "Ja, beigelegt"

// --- 8. Genetische Prädisposition (linkId 11954) ---
Instance: IntegratedGeneticPredisposition
InstanceOf: Observation
Usage: #example
Title: "Genetische Prädisposition (integriert)"
Description: "Angabe zur genetischen Prädisposition"
* status = #final
* code = $sct#76522002 "Diathesis, function (observable entity)"
* code.text = "Genetische Prädisposition"
* subject = Reference(Patient4)
* valueCodeableConcept = $sct#261665006 "Unknown (qualifier value)"
* valueCodeableConcept.text = "Nicht bekannt"
