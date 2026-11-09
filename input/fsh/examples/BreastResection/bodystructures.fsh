// =============================================================================
// BODYSTRUCTURE - TUMORLOKALISATION BET MAMMA
// Vorlage: mii-exa-patho-left-breast-body-structure (MII Patho 2027.0.0-ballot, #259)
// Zifferblatt und Mamillenabstand ueber die R5-Cross-Version-Extension
// BodyStructure.includedStructure.bodyLandmarkOrientation (Issue #42)
// =============================================================================

Instance: BreastResectionBodyStructure
InstanceOf: BodyStructure
Usage: #example
Title: "Tumorlokalisation BET"
Description: "Lokalisation im BET-Exzisionspräparat: linke Mamma, unterer äußerer Quadrant, 5 Uhr, 50 mm distal der Mamille"
* active = true
* patient = Reference(Patient4)
* morphology = $sct#82711006 "Infiltrating duct carcinoma (morphologic abnormality)"
* morphology.text = "Bioptisch gesichertes invasives Karzinom NST"
* location = $sct#110502005 "Structure of lower outer quadrant of left breast (body structure)"
* locationQualifier[+] = $sct#7771000 "Left (qualifier value)"
* description = "42 × 35 × 18 mm, Drahthäkchen in situ, Fadenmarkierung lang anterior und 2x kurz distal"
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure"
* extension[0].extension[0].url = "structure"
* extension[0].extension[0].valueCodeableConcept = $sct#110502005 "Structure of lower outer quadrant of left breast (body structure)"
* extension[0].extension[1].url = "laterality"
* extension[0].extension[1].valueCodeableConcept = $sct#7771000 "Left (qualifier value)"
* extension[0].extension[2].url = "bodyLandmarkOrientation"
* extension[0].extension[2].extension[0].url = "landmarkDescription"
* extension[0].extension[2].extension[0].valueCodeableConcept = $sct#24142002 "Nipple structure (body structure)"
* extension[0].extension[2].extension[1].url = "clockFacePosition"
* extension[0].extension[2].extension[1].valueCodeableConcept = $sct#260335000 "5 o'clock position (qualifier value)"
* extension[0].extension[2].extension[2].url = "surfaceOrientation"
* extension[0].extension[2].extension[2].valueCodeableConcept = $sct#46053002 "Distal (qualifier value)"
* extension[0].extension[2].extension[3].url = "distanceFromLandmark"
* extension[0].extension[2].extension[3].extension[0].url = "value"
* extension[0].extension[2].extension[3].extension[0].valueQuantity = 50 'mm' "mm"
