// =============================================================================
// QUESTIONNAIRE RESPONSE - INVASIVES KARZINOM RESEKTION
// =============================================================================

Instance: QuestionnaireResponseInvasiveCarcinomaResection
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse - Invasives Karzinom Resektion"
Description: "QuestionnaireResponse für invasive Carcinoma Resektion mit allen Befunden"
* questionnaire = "http://breastcancerspec.org/Questionnaire/Invasive-Carcinoma-Resection"
* status = #completed
* subject = Reference(Patient1)
* authored = "2024-07-19T14:30:00+01:00"
* author = Reference(PathologistPractitioner)

* item[+]
  * linkId = "inv.root"
  * text = "Invasives Mammakarzinom Resektion"

  * item[+]
    * linkId = "inv.patient"
    * text = "Patientendaten"
    * item[+]
      * linkId = "inv.patient.name"
      * text = "Familienname"
      * answer.valueString = "Mueller"
    * item[+]
      * linkId = "inv.patient.given"
      * text = "Vorname"
      * answer.valueString = "Anna"
    * item[+]
      * linkId = "inv.patient.dob"
      * text = "Geburtsdatum"
      * answer.valueDate = "1962-04-20"
    * item[+]
      * linkId = "inv.patient.id"
      * text = "Patienten-Identifikator"
      * answer.valueString = "PAT-2024-101"

  * item[+]
    * linkId = "inv.specimen"
    * text = "Untersuchungsmaterial"
    * item[+]
      * linkId = "inv.specimen.weight"
      * text = "Gewicht"
      * answer.valueQuantity = 45 'g' "g"
    * item[+]
      * linkId = "inv.specimen.tumorsize"
      * text = "Tumorgröße"
      * answer.valueQuantity = 18 'mm' "mm"

  * item[+]
    * linkId = "inv.histology"
    * text = "Histologischer Tumortyp"
    * item[+]
      * linkId = "inv.histology.icdo3"
      * text = "Histologischer Typ ICD-O-3"
      * answer.valueCoding = $ICDO-3#8500/3 "Invasives duktales Karzinom (NST)"

  * item[+]
    * linkId = "inv.grading"
    * text = "Nottingham-Grading"
    * item[+]
      * linkId = "inv.grading.tubules"
      * text = "Tubulusbildung"
      * answer.valueInteger = 2
    * item[+]
      * linkId = "inv.grading.pleomorphism"
      * text = "Kernpleomorphie"
      * answer.valueInteger = 2
    * item[+]
      * linkId = "inv.grading.mitoses"
      * text = "Mitoserate"
      * answer.valueInteger = 2

  * item[+]
    * linkId = "inv.biomarkers"
    * text = "Biomarker"
    * item[+]
      * linkId = "inv.biomarkers.er"
      * text = "Östrogenrezeptor"
      * answer.valueCoding = $sct#52101004 "Present (qualifier value)"
    * item[+]
      * linkId = "inv.biomarkers.er.pct"
      * text = "ER Prozent"
      * answer.valueInteger = 90
    * item[+]
      * linkId = "inv.biomarkers.pr"
      * text = "Progesteronrezeptor"
      * answer.valueCoding = $sct#52101004 "Present (qualifier value)"
    * item[+]
      * linkId = "inv.biomarkers.pr.pct"
      * text = "PR Prozent"
      * answer.valueInteger = 60
    * item[+]
      * linkId = "inv.biomarkers.her2"
      * text = "HER2 IHC"
      * answer.valueString = "Score 1+ (negativ)"
    * item[+]
      * linkId = "inv.biomarkers.ki67"
      * text = "Ki-67"
      * answer.valueInteger = 15

  * item[+]
    * linkId = "inv.margins"
    * text = "Resektionsränder"
    * item[+]
      * linkId = "inv.margins.status"
      * text = "Margin Status"
      * answer.valueCoding = $sct#1228937002 "Surgical margins uninvolved by tumor (finding)"
    * item[+]
      * linkId = "inv.margins.closest"
      * text = "Nächster Resektionsrand"
      * answer.valueQuantity = 5 'mm' "mm"

  * item[+]
    * linkId = "inv.tnm"
    * text = "TNM-Klassifikation"
    * item[+]
      * linkId = "inv.tnm.pt"
      * text = "pT"
      * answer.valueString = "pT1c"
    * item[+]
      * linkId = "inv.tnm.pn"
      * text = "pN"
      * answer.valueString = "pN0(sn)"
    * item[+]
      * linkId = "inv.tnm.r"
      * text = "R-Klassifikation"
      * answer.valueString = "R0"
