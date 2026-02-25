// =============================================================================
// QUESTIONNAIRE RESPONSE - STANZBIOPSIE
// =============================================================================

Instance: QuestionnaireResponseCoreNeedleBiopsy
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse - Stanzbiopsie Mamma"
Description: "QuestionnaireResponse für Stanzbiopsie Mamma mit allen Befunden"
* questionnaire = "http://breastcancerspec.org/Questionnaire/Core-Needle-Biopsy"
* status = #completed
* subject = Reference(Patient4)
* authored = "2025-01-17T14:30:00+01:00"
* author = Reference(PathologistPractitioner)

* item[+]
  * linkId = "cnb.root"
  * text = "Stanzbiopsie Mamma"

  * item[+]
    * linkId = "cnb.patient"
    * text = "Patientendaten"
    * item[+]
      * linkId = "cnb.patient.name"
      * text = "Familienname"
      * answer.valueString = "Becker"
    * item[+]
      * linkId = "cnb.patient.given"
      * text = "Vorname"
      * answer.valueString = "Sabine"
    * item[+]
      * linkId = "cnb.patient.dob"
      * text = "Geburtsdatum"
      * answer.valueDate = "1971-03-15"
    * item[+]
      * linkId = "cnb.patient.id"
      * text = "Patienten-Identifikator"
      * answer.valueString = "PAT-2025-105"

  * item[+]
    * linkId = "cnb.clinical"
    * text = "Klinische Angaben"
    * item[+]
      * linkId = "cnb.clinical.indication"
      * text = "Untersuchungsanlass"
      * answer.valueString = "Herdbefund/Architekturstörung linke Brust"
    * item[+]
      * linkId = "cnb.clinical.birads"
      * text = "BI-RADS"
      * answer.valueString = "4b"
    * item[+]
      * linkId = "cnb.clinical.imaging"
      * text = "Bildgebungsmodalität"
      * answer.valueString = "Ultraschall"

  * item[+]
    * linkId = "cnb.specimen"
    * text = "Untersuchungsmaterial"
    * item[+]
      * linkId = "cnb.specimen.type"
      * text = "Materialart"
      * answer.valueString = "HG-Stanzen/Mamma"
    * item[+]
      * linkId = "cnb.specimen.side"
      * text = "Seitenlokalisation"
      * answer.valueCoding = $sct#7771000 "Left (qualifier value)"
    * item[+]
      * linkId = "cnb.specimen.clock"
      * text = "Uhrzeigerlokalisation"
      * answer.valueString = "5 Uhr"
    * item[+]
      * linkId = "cnb.specimen.distance"
      * text = "Abstand von Mamille"
      * answer.valueQuantity = 5 'cm' "cm"
    * item[+]
      * linkId = "cnb.specimen.length"
      * text = "Gesamtlänge der Stanzzylinder"
      * answer.valueQuantity = 22 'mm' "mm"
    * item[+]
      * linkId = "cnb.specimen.cylinders"
      * text = "Anzahl Stanzzylinder"
      * answer.valueInteger = 2
    * item[+]
      * linkId = "cnb.specimen.blocks"
      * text = "Anzahl Blöcke"
      * answer.valueInteger = 1

  * item[+]
    * linkId = "cnb.histology"
    * text = "Histologischer Tumortyp"
    * item[+]
      * linkId = "cnb.histology.icdo3"
      * text = "Histologischer Typ ICD-O-3"
      * answer.valueCoding = $ICDO-3#8500/3 "Invasives duktales Karzinom (NST)"

  * item[+]
    * linkId = "cnb.grading"
    * text = "Nottingham-Grading"
    * item[+]
      * linkId = "cnb.grading.grade"
      * text = "Nottingham-Grad"
      * answer.valueString = "G2"
    * item[+]
      * linkId = "cnb.grading.score"
      * text = "Elston-Ellis Summenscore"
      * answer.valueInteger = 6
    * item[+]
      * linkId = "cnb.grading.tubules"
      * text = "Tubulusbildung"
      * answer.valueInteger = 3
    * item[+]
      * linkId = "cnb.grading.pleomorphism"
      * text = "Kernpleomorphie"
      * answer.valueInteger = 2
    * item[+]
      * linkId = "cnb.grading.mitoses"
      * text = "Mitoserate"
      * answer.valueInteger = 1

  * item[+]
    * linkId = "cnb.biomarkers"
    * text = "Biomarker"
    * item[+]
      * linkId = "cnb.biomarkers.er"
      * text = "Östrogenrezeptor"
      * answer.valueCoding = $sct#52101004 "Present (qualifier value)"
    * item[+]
      * linkId = "cnb.biomarkers.er.pct"
      * text = "ER Prozent"
      * answer.valueInteger = 85
    * item[+]
      * linkId = "cnb.biomarkers.pr"
      * text = "Progesteronrezeptor"
      * answer.valueCoding = $sct#52101004 "Present (qualifier value)"
    * item[+]
      * linkId = "cnb.biomarkers.pr.pct"
      * text = "PR Prozent"
      * answer.valueInteger = 50
    * item[+]
      * linkId = "cnb.biomarkers.her2"
      * text = "HER2 Amplifikation"
      * answer.valueString = "Negativ (nicht amplifiziert)"
    * item[+]
      * linkId = "cnb.biomarkers.ki67"
      * text = "Ki-67"
      * answer.valueInteger = 10

  * item[+]
    * linkId = "cnb.bclassification"
    * text = "B-Klassifikation"
    * item[+]
      * linkId = "cnb.bclassification.value"
      * text = "B-Klassifikation (NHSBSP)"
      * answer.valueString = "B5b"

  * item[+]
    * linkId = "cnb.microcalcification"
    * text = "Mikroverkalkungen"
    * item[+]
      * linkId = "cnb.microcalcification.relevant"
      * text = "Relevante Mikroverkalkungen"
      * answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
    * item[+]
      * linkId = "cnb.microcalcification.radiography"
      * text = "Präparateradiogramm"
      * answer.valueString = "Gesehen"
    * item[+]
      * linkId = "cnb.microcalcification.correlation"
      * text = "Korrelation Mikroverkalkung"
      * answer.valueString = "Vorliegende Verkalkung radiologisch nicht relevant (kleiner als 100 Mikrometer)"
