// =============================================================================
// QUESTIONNAIRE RESPONSE - NEOADJUVANTE THERAPIE RESEKTION
// =============================================================================

Instance: QuestionnaireResponseNeoadjuvantTherapyResection
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse - NAT Resektion"
Description: "QuestionnaireResponse für Neoadjuvante Therapie Resektion mit allen Befunden"
* questionnaire = "http://breastcancerspec.org/Questionnaire/Neoadjuvant-Therapy-Resection"
* status = #completed
* subject = Reference(Patient2)
* authored = "2024-09-25T14:30:00+01:00"
* author = Reference(PathologistPractitioner)

* item[+]
  * linkId = "nat.root"
  * text = "Mammakarzinom nach neoadjuvanter Therapie - Resektion"

  * item[+]
    * linkId = "nat.patient"
    * text = "Patientendaten"
    * item[+]
      * linkId = "nat.patient.name"
      * text = "Familienname"
      * answer.valueString = "Schmidt"
    * item[+]
      * linkId = "nat.patient.given"
      * text = "Vorname"
      * answer.valueString = "Maria"
    * item[+]
      * linkId = "nat.patient.dob"
      * text = "Geburtsdatum"
      * answer.valueDate = "1975-09-11"
    * item[+]
      * linkId = "nat.patient.id"
      * text = "Patienten-Identifikator"
      * answer.valueString = "PAT-2024-102"

  * item[+]
    * linkId = "nat.pretreatment"
    * text = "Vorbehandlung"
    * item[+]
      * linkId = "nat.pretreatment.histotype"
      * text = "Prä-NAT Histologischer Typ"
      * answer.valueCoding = $ICDO-3#8500/3 "Invasives duktales Karzinom (NST)"
    * item[+]
      * linkId = "nat.pretreatment.regimen"
      * text = "Chemotherapie-Schema"
      * answer.valueString = "dose-dense EC + Paclitaxel"

  * item[+]
    * linkId = "nat.response"
    * text = "Therapieansprechen"
    * item[+]
      * linkId = "nat.response.pcr"
      * text = "Pathologische Komplettremission"
      * answer.valueBoolean = true
    * item[+]
      * linkId = "nat.response.rcb"
      * text = "RCB-Klasse"
      * answer.valueString = "RCB 0 (pCR)"
    * item[+]
      * linkId = "nat.response.viable"
      * text = "Vitales Tumorgewebe"
      * answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
    * item[+]
      * linkId = "nat.response.dcis"
      * text = "Residuales DCIS"
      * answer.valueCoding = $sct#2667000 "Absent (qualifier value)"

  * item[+]
    * linkId = "nat.tumorbed"
    * text = "Tumorbett"
    * item[+]
      * linkId = "nat.tumorbed.changes"
      * text = "Veränderungen"
      * answer.valueString = "Fibrose, chronische Entzündung, Schaumzellen"

  * item[+]
    * linkId = "nat.margins"
    * text = "Resektionsränder"
    * item[+]
      * linkId = "nat.margins.status"
      * text = "Margin Status"
      * answer.valueCoding = $sct#1228937002 "Surgical margins uninvolved by tumor (finding)"

  * item[+]
    * linkId = "nat.tnm"
    * text = "TNM-Klassifikation"
    * item[+]
      * linkId = "nat.tnm.ypt"
      * text = "ypT"
      * answer.valueString = "ypT0"
    * item[+]
      * linkId = "nat.tnm.ypn"
      * text = "ypN"
      * answer.valueString = "ypN0"
    * item[+]
      * linkId = "nat.tnm.r"
      * text = "R-Klassifikation"
      * answer.valueString = "R0"
