Alias: $FHIR-version = http://hl7.org/fhir/FHIR-version
Alias: $loinc = http://loinc.org
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $sct = http://snomed.info/sct
Alias: $unitsofmeasure = http://unitsofmeasure.org

Instance: 2.16.840.1.113883.3.1937.777.18.27.25--20260218134120
InstanceOf: Questionnaire
Usage: #example
* meta.lastUpdated = "2026-02-22T17:30:25Z"
* meta.source = "https://art-decor.org/fhir/4.0/pathdv-"
* meta.tag = $FHIR-version#4.0.1
* language = #de-DE
* extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* extension.valueUrl = "https://art-decor.org/fhir/4.0/public"
* url = "https://art-decor.org/fhir/Questionnaire/2.16.840.1.113883.3.1937.777.18.27.25--20260218134120"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.18.27.25"
* name = "ICCR_Fragebogen_fuer_Stanzbiopsien_der_Mamma"
* title = "(ICCR )Fragebogen fuer Stanzbiopsien der Mamma"
* status = #draft
* experimental = false
* date = "2026-02-22T17:30:25Z"
* publisher = "Bundesverband Deutscher Pathologen e.V."
* contact.name = "Bundesverband Deutscher Pathologen e.V."
* contact.telecom.system = #url
* contact.telecom.value = "www.pathologie.de"
* description = "Modell für \"intelligentes\" Formular"
* copyright = "\n                                  © Copyright 2017-2023 Bundesverband Deutscher Pathologen e.V. All rights reserved                  \n            "
* effectivePeriod.start = "2026-02-18T13:41:20Z"
* item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.extension.valueBoolean = false
* item.linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10000"
* item.text = "Mammakarzinome"
* item.type = #group
* item.required = true
* item.repeats = false
* item.readOnly = false
* item.item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].extension.valueBoolean = false
* item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10010"
* item.item[=].code = $loinc#22636-5 "Pathology report relevant history Narrative"
* item.item[=].text = "Klinische Angaben zur histopathologischen Untersuchung"
* item.item[=].type = #group
* item.item[=].required = true
* item.item[=].repeats = false
* item.item[=].readOnly = false
* item.item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10010-help"
* item.item[=].item[=].text = "Die Bereitstellung präziser klinischer Informationen und Details ist wichtig, um den Kontext für die Probe, die Art der Anomalie, die Nachweismethode und die Krankengeschichte der Patientin zu verdeutlichen. Beispiele für wichtige Informationen sind eine frühere Brustkrebserkrankung oder -krebserkrankung, Vorbehandlungen wie neoadjuvante Therapie und vererbte genetische Mutationen wie BRCA1 oder BRCA2."
* item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].text.extension.valueMarkdown = "Die Bereitstellung präziser klinischer Informationen und Details ist wichtig, um den Kontext für die Probe, die Art der Anomalie, die Nachweismethode und die Krankengeschichte der Patientin zu verdeutlichen. Beispiele für wichtige Informationen sind eine frühere Brustkrebserkrankung oder -krebserkrankung, Vorbehandlungen wie neoadjuvante Therapie und vererbte genetische Mutationen wie BRCA1 oder BRCA2."
* item.item[=].item[=].type = #display
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.11951"
* item.item[=].item[=].code = $sct#125156009 "Satisfactory for evaluation but limited by lack of pertinent clinical patient information (finding)"
* item.item[=].item[=].text = "Proben limitiert auswertbar wegen fehlender klinischer Informationen"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14001--20180210000000"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.11912"
* item.item[=].item[=].code = $loinc#67098-4 "Reason for test or procedure"
* item.item[=].item[=].text = "Präsentationsmodus"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.11951"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12060"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11147"
* item.item[=].item[=].code = $loinc#18695-7 "ED clinical finding type"
* item.item[=].item[=].text = "Aktuelle klinische Befunde / Anlass zur Operation"
* item.item[=].item[=].type = #open-choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.11951"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = true
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12051"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.11923"
* item.item[=].item[=].code = $sct#415076002 "Personal history of primary malignant neoplasm of breast (situation)"
* item.item[=].item[=].text = "Brustkrebsvorgeschichte"
* item.item[=].item[=].type = #open-choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.11951"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14002"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.11918"
* item.item[=].item[=].code = $sct#706317000 "Breast imaging system (physical object)"
* item.item[=].item[=].text = "Bildgebungsmodalität"
* item.item[=].item[=].type = #open-choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.11951"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#2.16.840.1.113883.6.96 "Nein"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12067"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11148"
* item.item[=].item[=].code = $sct#274530001 "Abnormal findings on diagnostic imaging of breast (finding)"
* item.item[=].item[=].text = "Bildgebende Befunde"
* item.item[=].item[=].type = #open-choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.11951"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = true
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12052"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item[=].item[=].extension[=].valueCoding = $unitsofmeasure#mm "mm"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.11953"
* item.item[=].item[=].code = $sct#396361002 "Lesion size, largest dimension (observable entity)"
* item.item[=].item[=].text = "Radiologische Ausdehnung"
* item.item[=].item[=].type = #quantity
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.11951"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10160"
* item.item[=].item[=].code = $sct#836381000000102 "Insertion of marker into breast using X-ray guidance (procedure)"
* item.item[=].item[=].text = "Befundmarkierung"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.11951"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14002"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10130"
* item.item[=].item[=].code = $sct#80865008:363702006=185008008 "Specimen mammography (procedure) - Has focus (attribute) = Medical reports sent (finding)"
* item.item[=].item[=].text = "Präparateradiographie beigelegt"
* item.item[=].item[=].type = #open-choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.11951"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14002"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.11954"
* item.item[=].item[=].code = $sct#76522002 "Diathesis, function (observable entity)"
* item.item[=].item[=].text = "Genetische Prädisposition"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.11951"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12069"
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.11974"
* item.item[=].item[=].code = $sct#373573001 "Clinical finding present (situation)"
* item.item[=].item[=].text = "Andere klinische Informationen"
* item.item[=].item[=].type = #string
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.11951"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10200"
* item.item[=].item[=].code = $sct#39154008 "Clinical diagnosis (contextual qualifier) (qualifier value)"
* item.item[=].item[=].text = "Klinische Diagnose"
* item.item[=].item[=].type = #string
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.11951"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].extension.valueBoolean = false
* item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11106"
* item.item[=].code = $sct#9911007:363703001=726566009 "Core needle biopsy (procedure) - Has intent (attribute) = Pathology biopsy report (record artifact)"
* item.item[=].text = "Stanz-/Vakuumbiopsien"
* item.item[=].type = #group
* item.item[=].enableBehavior = #all
* item.item[=].required = true
* item.item[=].repeats = false
* item.item[=].readOnly = false
* item.item[=].item[0].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11156"
* item.item[=].item[=].code = $loinc#66746-9 "Specimen type"
* item.item[=].item[=].text = "Materialart"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/probenart"
* item.item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11156-help"
* item.item[=].item[=].item.text = "nur die beiden Stanzbiosiearten aus Value set MATMAM verwenden"
* item.item[=].item[=].item.type = #display
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "883619ef-a776-4fb4-ad40-0c8b502c895b"
* item.item[=].item[=].code = $sct#384727002 "Specimen laterality (observable entity)"
* item.item[=].item[=].text = "Seitenlokalisation der Probe"
* item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].text.extension.valueMarkdown = "Seitenlokalisation der Probe"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12017|2018-02-10T00:00:00"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "1393d032-a1e7-40b1-94b1-1eb9dd1f6916"
* item.item[=].item[=].code = $loinc#42799-7 "Quadrant Breast"
* item.item[=].item[=].text = "Quadrantenlokalisation"
* item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].text.extension.valueMarkdown = "Quadrantenlokalisation"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12010|2018-02-10T00:00:00"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "79295ed1-af7f-481c-88e8-168b40bcdf96"
* item.item[=].item[=].code = $sct#3980001000004105 "Radial location of primary malignant neoplasm in excised breast specimen (observable entity)"
* item.item[=].item[=].text = "Zifferblattlokalisation"
* item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].text.extension.valueMarkdown = "Zifferblattlokalisation"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12011|2018-02-10T00:00:00"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item[=].item[=].extension[=].valueCoding = $unitsofmeasure#cm "cm"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "5919cd11-2c21-4ee9-890b-cc719c64794c"
* item.item[=].item[=].code = $sct#248821001 "Position of nipple (observable entity)"
* item.item[=].item[=].text = "Abstand von Mamille"
* item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].text.extension.valueMarkdown = "Abstand von Mamille"
* item.item[=].item[=].type = #quantity
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].readOnly = false
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item[=].item[=].extension[=].valueCoding = $unitsofmeasure#mm "mm"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10240"
* item.item[=].item[=].code = $loinc#44619-5 "Length of tissue core(s)"
* item.item[=].item[=].text = "Gesamtlänge der Stanzzylinder"
* item.item[=].item[=].type = #quantity
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10250"
* item.item[=].item[=].code = $loinc#44652-6 "Total number of cores in Tissue core"
* item.item[=].item[=].text = "Anzahl der Stanzzylinder"
* item.item[=].item[=].type = #integer
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10260"
* item.item[=].item[=].code = $loinc#85346-5 "Tissue blocks examined [#] in Specimen"
* item.item[=].item[=].text = "Anzahl der Blöcke"
* item.item[=].item[=].type = #integer
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10310"
* item.item[=].item[=].code = $sct#43515008 "Specimen not representative of anatomic site (finding)"
* item.item[=].item[=].text = "nicht verwertbares Material"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14002"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10280"
* item.item[=].item[=].code = $sct#80865008:363702006=305653009 "Specimen mammography (procedure) - Has focus (attribute) = Seen by pathologist (finding)"
* item.item[=].item[=].text = "Präparateradiogramm gesehen"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.10130"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12047"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10290"
* item.item[=].item[=].code = $loinc#44692-2 "Microcalcifications in Breast tumor"
* item.item[=].item[=].text = "relevante Mikroverkalkungen"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14002"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10300"
* item.item[=].item[=].code = $sct#384669006 "Status of microcalcifications in specimen (observable entity)"
* item.item[=].item[=].text = "Verkalkungstyp"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.10290"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12001"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10320"
* item.item[=].item[=].code = $sct#125114005 "Normal tissue morphology by light microscopy (finding)"
* item.item[=].item[=].text = "Normalgewebe"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.10310"
* item.item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14002"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10330"
* item.item[=].item[=].code = $loinc#63911-2 "Fibrocystic or other benign breast disease confirmed by breast biopsy [PhenX]"
* item.item[=].item[=].text = "Benigne Läsionen"
* item.item[=].item[=].type = #open-choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.10310"
* item.item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12002"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10340"
* item.item[=].item[=].code = $sct#290073004:47429007=263916005 "Lesion of breast (finding) - Associated with (attribute) = Uncertain behavior (finding)"
* item.item[=].item[=].text = "Benigne Läsionen unicheres Potential"
* item.item[=].item[=].type = #open-choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.10310"
* item.item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12003"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10350"
* item.item[=].item[=].code = $sct#5244003 "Intraductal papilloma (morphologic abnormality)"
* item.item[=].item[=].text = "Intraduktal-papilläre benigne Läsionen"
* item.item[=].item[=].type = #open-choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.10310"
* item.item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12004"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10370"
* item.item[=].item[=].code = $sct#189336000 "Carcinoma in situ of breast (disorder)"
* item.item[=].item[=].text = "Maligne Läsion nichtinvasiv"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.10310"
* item.item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12--20190811122751"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10440"
* item.item[=].item[=].code = $sct#254837009 "Malignant tumor of breast (disorder)"
* item.item[=].item[=].text = "Maligne Läsion invasiv"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.10310"
* item.item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12--20190811122751"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10580"
* item.item[=].item[=].code = $sct#282292002 "Uncertain diagnosis (observable entity)"
* item.item[=].item[=].text = "Unklare Läsion"
* item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].text.extension.valueMarkdown = "Unklare Läsion"
* item.item[=].item[=].type = #open-choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.10310"
* item.item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12048"
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.11916"
* item.item[=].item[=].code = $sct#254837009 "Malignant tumor of breast (disorder)"
* item.item[=].item[=].text = "Sonstige maligne Neoplasie"
* item.item[=].item[=].type = #text
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10590"
* item.item[=].item[=].code = $sct#271937008 "Screening interpretation (observable entity)"
* item.item[=].item[=].text = "B-Klassifikation"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.10310"
* item.item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].enableWhen.answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerOption[0].valueString = "B1"
* item.item[=].item[=].answerOption[+].valueString = "B2"
* item.item[=].item[=].answerOption[+].valueString = "B3"
* item.item[=].item[=].answerOption[+].valueString = "B4"
* item.item[=].item[=].answerOption[+].valueString = "B5a"
* item.item[=].item[=].answerOption[+].valueString = "B5b"
* item.item[=].item[=].answerOption[+].valueString = "B5c"
* item.item[=].item[=].answerOption[+].valueString = "B5d"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10600"
* item.item[=].item[=].code = $sct#290073004:47429007=12747003 "Lesion of breast (finding - Associated with (attribute) = Microcalcification (calcified structure"
* item.item[=].item[=].text = "Mikrokalkassoziation"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableWhen[0].question = "2.16.840.1.113883.3.1937.777.18.2.3.10290"
* item.item[=].item[=].enableWhen[=].operator = #=
* item.item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.3.10310"
* item.item[=].item[=].enableWhen[=].operator = #!=
* item.item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12042"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10610"
* item.item[=].item[=].code = $loinc#44692-2 "Microcalcifications in Breast tumor"
* item.item[=].item[=].text = "Mikrokalkassoziation mit Läsion"
* item.item[=].item[=].type = #open-choice
* item.item[=].item[=].enableWhen[0].question = "2.16.840.1.113883.3.1937.777.18.2.3.10310"
* item.item[=].item[=].enableWhen[=].operator = #!=
* item.item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.3.10290"
* item.item[=].item[=].enableWhen[=].operator = #=
* item.item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12043"
* item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10620"
* item.item[=].item[=].code = $sct#425911000 "Status of correlation between radiographic image and pathologic finding (observable entity)"
* item.item[=].item[=].text = "Korrelation Mikroverkalkung"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].enableWhen[0].question = "2.16.840.1.113883.3.1937.777.18.2.3.10310"
* item.item[=].item[=].enableWhen[=].operator = #!=
* item.item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.3.10290"
* item.item[=].item[=].enableWhen[=].operator = #=
* item.item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Ja"
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12044"
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10770"
* item.item[=].item[=].code = $loinc#22638-1 "Pathology report comments [Interpretation] Narrative"
* item.item[=].item[=].text = "Kommentar"
* item.item[=].item[=].type = #text
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10360"
* item.item[=].item[=].code = $sct#189336000 "Carcinoma in situ of breast (disorder)"
* item.item[=].item[=].text = "Nichtinvasive maligne Läsionen"
* item.item[=].item[=].type = #group
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.10370"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#52101004 "Vorhanden"
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].item[0].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.160"
* item.item[=].item[=].item[=].code[0] = $loinc#44638-5 "Histo type BT"
* item.item[=].item[=].item[=].code[+] = $sct#1287028000 "Histologic type of noninvasive premalignant neoplasm of breast (observable entity)"
* item.item[=].item[=].item[=].text = "Histologischer Typ nach WHO / Diagnostische Klassifikation"
* item.item[=].item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].text.extension.extension[0].url = "lang"
* item.item[=].item[=].item[=].text.extension.extension[=].valueCode = #en-US
* item.item[=].item[=].item[=].text.extension.extension[+].url = "content"
* item.item[=].item[=].item[=].text.extension.extension[=].valueString = "DIAGNOSTIC CLASSIFICATION"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "http://snomed.info/sct"
* item.item[=].item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.160-help"
* item.item[=].item[=].item[=].item.text = "Um Konsens und Konsistenz in der Berichterstattung zu gewährleisten, wird empfohlen, die Nomenklatur und Definitionen für Diagnose und Klassifizierung der aktuellsten Ausgabe der WHO-Klassifikation der Brusttumoren (5. Auflage, 2019) zu verwenden. Der ICCR-Datensatz enthält die Korrekturen der 5. Auflage vom September 2020. Duktales Carcinoma in situ (DCIS) variiert hinsichtlich Zellbild, Wachstumsmuster und Ausdehnung der Erkrankung und wird heute als heterogene Gruppe von in situ neoplastischen Prozessen betrachtet. Wenn DCIS ausschließlich die Epidermis der Brustwarze betrifft, ohne dass ein invasives Karzinom oder DCIS vorliegt, spricht man von Morbus Paget der Brustwarze. Die meisten dieser Tumoren weisen einen hohen Kernteilungsgrad und eine starke HER2-Positivität auf. Pleomorphes LCIS zeigt Überschneidungen mit DCIS und kann ähnlich behandelt werden. Derzeit liegen jedoch nicht genügend Daten vor, um definitive Behandlungsempfehlungen zu formulieren. Das aktuelle Verständnis der Die Nutzung dieses Datensatzes ist nur unter den in der folgenden Erklärung beschriebenen Bedingungen zulässig: Der natürliche Verlauf von pleomorphem und floridem LCIS ist nur unzureichend erforscht, und die optimale Behandlung ist hinsichtlich der Anstrebung negativer Resektionsränder und der Erwägung zusätzlicher adjuvanter Therapien unbekannt. Obwohl pleomorphes und florides LCIS derzeit nicht in der AJCC pTis-Klassifikation enthalten sind, bleiben sie eine Kategorie in der UICC TNM 8. Auflage und es gibt zunehmend Hinweise darauf, dass diese Formen von LCIS besser wie DCIS behandelt werden könnten, insbesondere durch Exzision negativer Resektionsränder."
* item.item[=].item[=].item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item.text.extension.valueMarkdown = "Um Konsens und Konsistenz in der Berichterstattung zu gewährleisten, wird empfohlen, die Nomenklatur und Definitionen für Diagnose und Klassifizierung der aktuellsten Ausgabe der WHO-Klassifikation der Brusttumoren (5. Auflage, 2019) zu verwenden. Der ICCR-Datensatz enthält die Korrekturen der 5. Auflage vom September 2020. Duktales Carcinoma in situ (DCIS) variiert hinsichtlich Zellbild, Wachstumsmuster und Ausdehnung der Erkrankung und wird heute als heterogene Gruppe von in situ neoplastischen Prozessen betrachtet. Wenn DCIS ausschließlich die Epidermis der Brustwarze betrifft, ohne dass ein invasives Karzinom oder DCIS vorliegt, spricht man von Morbus Paget der Brustwarze. Die meisten dieser Tumoren weisen einen hohen Kernteilungsgrad und eine starke HER2-Positivität auf. Pleomorphes LCIS zeigt Überschneidungen mit DCIS und kann ähnlich behandelt werden. Derzeit liegen jedoch nicht genügend Daten vor, um definitive Behandlungsempfehlungen zu formulieren. Das aktuelle Verständnis der Die Nutzung dieses Datensatzes ist nur unter den in der folgenden Erklärung beschriebenen Bedingungen zulässig: Der natürliche Verlauf von pleomorphem und floridem LCIS ist nur unzureichend erforscht, und die optimale Behandlung ist hinsichtlich der Anstrebung negativer Resektionsränder und der Erwägung zusätzlicher adjuvanter Therapien unbekannt. Obwohl pleomorphes und florides LCIS derzeit nicht in der AJCC pTis-Klassifikation enthalten sind, bleiben sie eine Kategorie in der UICC TNM 8. Auflage und es gibt zunehmend Hinweise darauf, dass diese Formen von LCIS besser wie DCIS behandelt werden könnten, insbesondere durch Exzision negativer Resektionsränder."
* item.item[=].item[=].item[=].item.type = #display
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.11914"
* item.item[=].item[=].item[=].code = $sct#397005006 "WHO tumor classification (observable entity)"
* item.item[=].item[=].item[=].text = "ICD-O-Version"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.9"
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.11915"
* item.item[=].item[=].item[=].text = "Morphologie Freitext"
* item.item[=].item[=].item[=].type = #text
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10380"
* item.item[=].item[=].item[=].code = $sct#2890001000004108 "Nuclear grade of ductal carcinoma in situ of breast (observable entity)"
* item.item[=].item[=].item[=].text = "Kerngrading / WHO-Grading nichtinvasiv"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12006"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10390"
* item.item[=].item[=].item[=].code = $loinc#85340-8 "DCIS necrosis [Type] in Breast cancer specimen by Light microscopy"
* item.item[=].item[=].item[=].text = "Komedonekrosen"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12059"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10420"
* item.item[=].item[=].item[=].code = $loinc#85302-8 "Growth pattern of DCIS [Type] in Breast cancer specimen by Light microscopy"
* item.item[=].item[=].item[=].text = "DCIS Architektur"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12009"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11157"
* item.item[=].item[=].item[=].code = $loinc#85338-2 "LCIS [Presence] in Breast cancer specimen by Light microscopy"
* item.item[=].item[=].item[=].text = "LN Variante"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12053"
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10430"
* item.item[=].item[=].code = $sct#254837009 "Malignant tumor of breast (disorder)"
* item.item[=].item[=].text = "Invasive maligne Läsionen"
* item.item[=].item[=].type = #group
* item.item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.3.10440"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerCoding = $sct#52101004 "Vorhanden"
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].item[0].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.161"
* item.item[=].item[=].item[=].code[0] = $loinc#44638-5 "Histo type BT"
* item.item[=].item[=].item[=].code[+] = $sct#1660001000004100 "Histologic type of primary malignant neoplasm of breast (observable entity)"
* item.item[=].item[=].item[=].text = "Histologischer Tumortyp WHO / ICD-O-3"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "http://terminology.hl7.org/CodeSystem/icd-o-3"
* item.item[=].item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.161-help"
* item.item[=].item[=].item[=].item.text = "Um Konsens und Konsistenz in der Berichterstattung zu gewährleisten, wird empfohlen, die aktuellste Ausgabe der WHO-Klassifikation der Brusttumoren, 5. Auflage, 2019, Nomenklatur und Definitionen für die Diagnose und Klassifikation invasiver Tumortypen (Tabelle 1) zu verwenden.¹ Der ICCR-Datensatz enthält die Korrekturen der 5. Auflage vom September 2020.² Die Bestimmung des histologischen Typs basiert auf der routinemäßigen histologischen Untersuchung; Spezialfärbungen wie E-Cadherin sind für die Bestimmung des histologischen Typs nicht erforderlich. Spezielle Karzinome sollten zu mindestens 90 % aus einem reinen Muster bestehen. Daher kann die Klassifizierung als reiner spezieller Typ nicht mit Sicherheit anhand einer begrenzten Stanzbiopsieprobe erfolgen und erfordert in der Regel Befunde aus der Resektion. Einige invasive Brustkarzinome und invasive Brustkarzinome ohne speziellen Typ (IBC-NST) können eine Mischung aus keinem speziellen Typ und einem speziellen Subtyp enthalten. Wenn der spezielle Subtyp 10–90 % des Tumors ausmacht, kann die Bezeichnung „gemischtes IBC-NST-Karzinom und spezielles Subtypkarzinom“ verwendet werden. Für diese Art von gemischtem IBC-NST-Karzinom und speziellem Subtyp wird empfohlen, beide vorhandenen Elemente sowie den Gesamtanteil des speziellen Subtyps anzugeben. Zum Beispiel: „gemischtes IBC-NST-Karzinom und invasives lobuläres Karzinom (30 % lobulär)“. Tumoren mit einem Anteil von <10 % speziellem Subtyp sollten als IBC-NST klassifiziert werden, während Tumoren mit einem Anteil von >90 % speziellem Subtyp als spezieller Subtyp klassifiziert werden sollten. Beachten Sie, dass die WHO-Klassifikation von 2019 nun Karzinome mit medullärem Muster, invasive Karzinome mit neuroendokriner Differenzierung, Karzinome mit pleomorphen und choriokarzinomatösen Mustern, Tumoren mit melanozytären Merkmalen, onkozytäre, lipidreiche, glykogenreiche, klarzellige und sebazöse Karzinome als spezielle morphologische Muster des IBC-NST betrachtet. 1 Diese Tumoren gelten unabhängig vom Ausmaß der Differenzierung/des Musters als morphologische Muster des IBC-NST, und die 90%-Regel für spezielle Subtypen wird nicht auf Tumoren angewendet, die eines dieser Muster aufweisen. Wenn kein residuales invasives Karzinom vorhanden ist, z. B. wenn der invasive Tumor durch eine vorherige Operation oder Biopsie vollständig entfernt wurde, sollten die im vorherigen diagnostischen Präparat identifizierbaren Tumormerkmale zusammen mit einer erläuternden Anmerkung verwendet werden, um den synoptischen Bericht auszufüllen. Nach neoadjuvanter Therapie kann die genaue Klassifizierung des Tumortyps aufgrund zytopathischer Veränderungen durch die Behandlung erschwert sein. Beispielsweise kann die Morphologie eines invasiven Mammakarzinoms ohne besonderen Typ (NST) eher einem lobulären Karzinom ähneln, oder ein lobuläres Karzinom kann höhergradig erscheinen, was auf einen duktalen Phänotyp hindeutet.<sup>4</sup> In diesem Fall sollte der Tumortyp vor der Behandlung als genauer angesehen werden. Die Muzinansammlungen des muzinösen Karzinoms bleiben tendenziell auch nach dem Verschwinden der invasiven Karzinomzellen nach neoadjuvanter Therapie bestehen. Die Größenmessung nach neoadjuvanter Therapie sollte bei Vorliegen dieses Bildes von Tumorzelle zu Tumorzelle erfolgen, ohne das umgebende Muzin einzuschließen. Eine gründliche Probenentnahme bei muzinösem Karzinom mit geringer Zellzahl nach neoadjuvanter Therapie ist erforderlich. Das Vorhandensein von Mucin in Abwesenheit lebensfähiger Tumorzellen schließt eine Klassifizierung als pathologische Komplettremission (pCR) nicht aus. Nur Codes mit /3 verwenden"
* item.item[=].item[=].item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item.text.extension.valueMarkdown = "Um Konsens und Konsistenz in der Berichterstattung zu gewährleisten, wird empfohlen, die aktuellste Ausgabe der WHO-Klassifikation der Brusttumoren, 5. Auflage, 2019, Nomenklatur und Definitionen für die Diagnose und Klassifikation invasiver Tumortypen (Tabelle 1) zu verwenden.¹ Der ICCR-Datensatz enthält die Korrekturen der 5. Auflage vom September 2020.² Die Bestimmung des histologischen Typs basiert auf der routinemäßigen histologischen Untersuchung; Spezialfärbungen wie E-Cadherin sind für die Bestimmung des histologischen Typs nicht erforderlich. Spezielle Karzinome sollten zu mindestens 90 % aus einem reinen Muster bestehen. Daher kann die Klassifizierung als reiner spezieller Typ nicht mit Sicherheit anhand einer begrenzten Stanzbiopsieprobe erfolgen und erfordert in der Regel Befunde aus der Resektion. Einige invasive Brustkarzinome und invasive Brustkarzinome ohne speziellen Typ (IBC-NST) können eine Mischung aus keinem speziellen Typ und einem speziellen Subtyp enthalten. Wenn der spezielle Subtyp 10–90 % des Tumors ausmacht, kann die Bezeichnung „gemischtes IBC-NST-Karzinom und spezielles Subtypkarzinom“ verwendet werden. Für diese Art von gemischtem IBC-NST-Karzinom und speziellem Subtyp wird empfohlen, beide vorhandenen Elemente sowie den Gesamtanteil des speziellen Subtyps anzugeben. Zum Beispiel: „gemischtes IBC-NST-Karzinom und invasives lobuläres Karzinom (30 % lobulär)“. Tumoren mit einem Anteil von <10 % speziellem Subtyp sollten als IBC-NST klassifiziert werden, während Tumoren mit einem Anteil von >90 % speziellem Subtyp als spezieller Subtyp klassifiziert werden sollten. Beachten Sie, dass die WHO-Klassifikation von 2019 nun Karzinome mit medullärem Muster, invasive Karzinome mit neuroendokriner Differenzierung, Karzinome mit pleomorphen und choriokarzinomatösen Mustern, Tumoren mit melanozytären Merkmalen, onkozytäre, lipidreiche, glykogenreiche, klarzellige und sebazöse Karzinome als spezielle morphologische Muster des IBC-NST betrachtet. 1 Diese Tumoren gelten unabhängig vom Ausmaß der Differenzierung/des Musters als morphologische Muster des IBC-NST, und die 90%-Regel für spezielle Subtypen wird nicht auf Tumoren angewendet, die eines dieser Muster aufweisen. Wenn kein residuales invasives Karzinom vorhanden ist, z. B. wenn der invasive Tumor durch eine vorherige Operation oder Biopsie vollständig entfernt wurde, sollten die im vorherigen diagnostischen Präparat identifizierbaren Tumormerkmale zusammen mit einer erläuternden Anmerkung verwendet werden, um den synoptischen Bericht auszufüllen.\n\nNach neoadjuvanter Therapie kann die genaue Klassifizierung des Tumortyps aufgrund zytopathischer Veränderungen durch die Behandlung erschwert sein. Beispielsweise kann die Morphologie eines invasiven Mammakarzinoms ohne besonderen Typ (NST) eher einem lobulären Karzinom ähneln, oder ein lobuläres Karzinom kann höhergradig erscheinen, was auf einen duktalen Phänotyp hindeutet.<sup>4</sup> In diesem Fall sollte der Tumortyp vor der Behandlung als genauer angesehen werden. Die Muzinansammlungen des muzinösen Karzinoms bleiben tendenziell auch nach dem Verschwinden der invasiven Karzinomzellen nach neoadjuvanter Therapie bestehen. Die Größenmessung nach neoadjuvanter Therapie sollte bei Vorliegen dieses Bildes von Tumorzelle zu Tumorzelle erfolgen, ohne das umgebende Muzin einzuschließen. Eine gründliche Probenentnahme bei muzinösem Karzinom mit geringer Zellzahl nach neoadjuvanter Therapie ist erforderlich. Das Vorhandensein von Mucin in Abwesenheit lebensfähiger Tumorzellen schließt eine Klassifizierung als pathologische Komplettremission (pCR) nicht aus.\n\nNur Codes mit /3 verwenden"
* item.item[=].item[=].item[=].item.type = #display
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11158"
* item.item[=].item[=].item[=].code = $sct#397005006 "WHO tumor classification (observable entity)"
* item.item[=].item[=].item[=].text = "ICD-O-Version"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.9"
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10460"
* item.item[=].item[=].item[=].code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* item.item[=].item[=].item[=].text = "Morphologie Freitext"
* item.item[=].item[=].item[=].type = #text
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10570"
* item.item[=].item[=].item[=].code = $sct#86049000 "Malignant neoplasm, primary (morphologic abnormality)"
* item.item[=].item[=].item[=].text = "sonstige maligne Läsion"
* item.item[=].item[=].item[=].type = #text
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10470"
* item.item[=].item[=].item[=].code = $loinc#85336-6 "DCIS intraduct ext Br ca spec Ql Micro"
* item.item[=].item[=].item[=].text = "Intraduktale Komponente"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14002"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10480"
* item.item[=].item[=].item[=].code = $sct#128700001 "Infiltrating duct mixed with other types of carcinoma (morphologic abnormality)"
* item.item[=].item[=].item[=].text = "Mischtyp vorhanden"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14002"
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10490"
* item.item[=].item[=].item[=].code = $sct#444057000 "Infiltrating carcinoma with ductal and lobular features (morphologic abnormality)"
* item.item[=].item[=].item[=].text = "Mischtyp"
* item.item[=].item[=].item[=].type = #text
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10500"
* item.item[=].item[=].item[=].code = $loinc#44648-4 "Histologic grade [Score] in Breast cancer specimen Qualitative by Nottingham"
* item.item[=].item[=].item[=].text = "Elston-Ellis-Grad"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12028"
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10560"
* item.item[=].item[=].item[=].code = $sct#373378009:363713009=280433002 "Nottingham Combined Grade finding (finding) - Has interpretation (attribute) = Summated scale score (qualifier value)"
* item.item[=].item[=].item[=].text = "Elston-Ellis-Summenscore"
* item.item[=].item[=].item[=].type = #integer
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10510"
* item.item[=].item[=].item[=].code = $loinc#85321-8 "Gland diff Br ca spec Ql Nottingham"
* item.item[=].item[=].item[=].text = "Tubulus Scorewert"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12029"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10520"
* item.item[=].item[=].item[=].code = $loinc#44645-0 "Nuc pleomorph BT Nottingham"
* item.item[=].item[=].item[=].text = "Kernpleomorphie Scorewert"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12030"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10530"
* item.item[=].item[=].item[=].code = $loinc#85300-2 "Mitotic rate Br ca spec Ql Nottingham"
* item.item[=].item[=].item[=].text = "Mitoserate Scorewert"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12031"
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "52eea0cd-19b0-4e0f-ae18-a4ddb01f45ca"
* item.item[=].item[=].item[=].code = $sct#406094009 "Number of mitoses per 10 high power fields (observable entity)"
* item.item[=].item[=].item[=].text = "Mitosezahl pro 10 HPF"
* item.item[=].item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].text.extension.valueMarkdown = "Mitosezahl pro 10 HPF"
* item.item[=].item[=].item[=].type = #integer
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#mm "mm"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10550"
* item.item[=].item[=].item[=].code = $sct#301980006:47429007=81827009 "Finding of visual field (finding) - Associated with (attribute) = Diameter (qualifier value)"
* item.item[=].item[=].item[=].text = "Gesichtsfelddurchmesser"
* item.item[=].item[=].item[=].type = #quantity
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.11860"
* item.item[=].item[=].item[=].code = $sct#765220005:47429007=373800009 "Disorder in full remission in response to treatment (disorder) - Associated with (attribute) = Cancer diagnosis based on primary site histological evidence (finding)"
* item.item[=].item[=].item[=].text = "Pathologische Komplettremission (pCR) nach neoadjuvanter Therapie"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14002"
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11107"
* item.item[=].item[=].code = $loinc#21924-6 "Tumor marker Cancer"
* item.item[=].item[=].text = "Biomarker"
* item.item[=].item[=].type = #group
* item.item[=].item[=].enableWhen[0].question = "2.16.840.1.113883.3.1937.777.18.2.3.10370"
* item.item[=].item[=].enableWhen[=].operator = #=
* item.item[=].item[=].enableWhen[=].answerCoding = $sct#52101004 "Vorhanden"
* item.item[=].item[=].enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.3.10440"
* item.item[=].item[=].enableWhen[=].operator = #=
* item.item[=].item[=].enableWhen[=].answerCoding = $sct#52101004 "Vorhanden"
* item.item[=].item[=].enableBehavior = #any
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].item[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#% "%"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10630"
* item.item[=].item[=].item[=].code = $loinc#85329-1 "Cells.estrogen receptor/100 cells in Breast cancer specimen by Immune stain"
* item.item[=].item[=].item[=].text = "PP ER"
* item.item[=].item[=].item[=].type = #quantity
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10640"
* item.item[=].item[=].item[=].code = $loinc#85310-1 "Estrogen receptor fluorescence intensity [Type] in Breast cancer specimen by Immune stain"
* item.item[=].item[=].item[=].text = "Färbeintensität ER"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12034"
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10650"
* item.item[=].item[=].item[=].code = $sct#445104009 "Sum of proportion of positive staining neoplastic cells score and average intensity of staining score for hormone receptors using immunohistochemistry (observable entity)"
* item.item[=].item[=].item[=].text = "IRS ER"
* item.item[=].item[=].item[=].type = #integer
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10660"
* item.item[=].item[=].item[=].code = $loinc#16112-5 "Estrogen receptor [Interpretation] in Tissue"
* item.item[=].item[=].item[=].text = "Hormonrezeptorstatus Östrogen"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12036"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#% "%"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10670"
* item.item[=].item[=].item[=].code = $loinc#85325-9 "Cells.progesterone receptor/100 cells in Breast cancer specimen by Immune stain"
* item.item[=].item[=].item[=].text = "PP PR"
* item.item[=].item[=].item[=].type = #quantity
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10680"
* item.item[=].item[=].item[=].code = $loinc#85331-7 "Progesterone receptor fluorescence intensity [Type] in Breast cancer specimen by Immune stain"
* item.item[=].item[=].item[=].text = "Färbeintensität PR"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12034"
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10690"
* item.item[=].item[=].item[=].code = $sct#445104009 "Sum of proportion of positive staining neoplastic cells score and average intensity of staining score for hormone receptors using immunohistochemistry (observable entity)"
* item.item[=].item[=].item[=].text = "IRS PR"
* item.item[=].item[=].item[=].type = #integer
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10700"
* item.item[=].item[=].item[=].code = $loinc#16113-3 "Progesterone receptor [Interpretation] in Tissue"
* item.item[=].item[=].item[=].text = "Hormonrezeptorstatus Progesteron"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12036"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10730"
* item.item[=].item[=].item[=].code = $loinc#85319-2 "HER2 [Presence] in Breast cancer specimen by Immune stain"
* item.item[=].item[=].item[=].text = "Her2 Score"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12038"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#% "%"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.154"
* item.item[=].item[=].item[=].code = $loinc#85328-3 "Cells.HER2 uniform intense membrane staining/cells in Breast cancer specimen by Immune stain"
* item.item[=].item[=].item[=].text = "PP Her2"
* item.item[=].item[=].item[=].type = #quantity
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10740"
* item.item[=].item[=].item[=].code = $loinc#85318-4 "HER2 [Presence] in Breast cancer specimen by FISH"
* item.item[=].item[=].item[=].text = "Her2 Amplifikation"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12039"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10750"
* item.item[=].item[=].item[=].code = $loinc#48676-1 "HER2 [Interpretation] in Tissue"
* item.item[=].item[=].item[=].text = "Her2neuStatus"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12036"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#% "%"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.3.10760"
* item.item[=].item[=].item[=].code = $loinc#85330-9 "Cells.Ki-67 nuclear Ag/100 cells in Breast cancer specimen by Immune stain"
* item.item[=].item[=].item[=].text = "Ki67-Index"
* item.item[=].item[=].item[=].type = #quantity
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false