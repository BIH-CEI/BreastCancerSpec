// =============================================================================
// QUESTIONNAIRE RESPONSE - DCIS RESEKTION
// =============================================================================

Instance: QuestionnaireResponseDCISResection
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse - DCIS Resektion"
Description: "QuestionnaireResponse für DCIS Resektion mit makroskopischen und diagnostischen Befunden"
* questionnaire = "http://breastcancerspec.org/Questionnaire/DCIS-Resection"
* status = #completed
* subject = Reference(Patient3)
* authored = "2024-06-14T14:30:00+01:00"
* author = Reference(PathologistPractitioner)

* item[+]
  * linkId = "dcis.root"
  * text = "DCIS Resektion"

  * item[+]
    * linkId = "dcis.patient"
    * text = "Patientendaten"

    * item[+]
      * linkId = "dcis.patient.name"
      * text = "Familienname"
      * answer.valueString = "Weber"

    * item[+]
      * linkId = "dcis.patient.given"
      * text = "Vorname"
      * answer.valueString = "Petra"

    * item[+]
      * linkId = "dcis.patient.dob"
      * text = "Geburtsdatum"
      * answer.valueDate = "1958-12-03"

    * item[+]
      * linkId = "dcis.patient.id"
      * text = "Patienten-Identifikator"
      * answer.valueString = "PAT-2024-103"

    * item[+]
      * linkId = "dcis.patient.accession"
      * text = "Eingangs-/Fallnummer"
      * answer.valueString = "E_24_103"

  * item[+]
    * linkId = "dcis.specimen"
    * text = "Untersuchungsmaterial"

    * item[+]
      * linkId = "dcis.specimen.weight"
      * text = "Gewicht"
      * answer.valueQuantity = 32 'g' "g"

    * item[+]
      * linkId = "dcis.specimen.length"
      * text = "Länge"
      * answer.valueQuantity = 4.5 'cm' "cm"

    * item[+]
      * linkId = "dcis.specimen.width"
      * text = "Breite"
      * answer.valueQuantity = 3.2 'cm' "cm"

    * item[+]
      * linkId = "dcis.specimen.depth"
      * text = "Tiefe"
      * answer.valueQuantity = 2.0 'cm' "cm"

  * item[+]
    * linkId = "dcis.histology"
    * text = "Histologischer Typ"

    * item[+]
      * linkId = "dcis.histology.icdo3"
      * text = "Histologischer Typ ICD-O-3"
      * answer.valueCoding = $ICDO-3#8500/2 "Duktales Carcinoma in situ"

  * item[+]
    * linkId = "dcis.grade"
    * text = "Nukleärer Grad"
    * answer.valueString = "Grad 3 (high-grade)"

  * item[+]
    * linkId = "dcis.pattern"
    * text = "Architekturmuster"
    * answer.valueString = "Comedo-Typ"

  * item[+]
    * linkId = "dcis.necrosis"
    * text = "Nekrose"
    * answer.valueCoding = $sct#52101004 "Present (qualifier value)"

  * item[+]
    * linkId = "dcis.size"
    * text = "DCIS-Ausdehnung"
    * answer.valueQuantity = 25 'mm' "mm"

  * item[+]
    * linkId = "dcis.margins"
    * text = "Resektionsränder"

    * item[+]
      * linkId = "dcis.margins.status"
      * text = "Margin Status"
      * answer.valueCoding = $sct#1228937002 "Surgical margins uninvolved by tumor (finding)"

    * item[+]
      * linkId = "dcis.margins.closest"
      * text = "Nächster Resektionsrand"
      * answer.valueQuantity = 3 'mm' "mm"

  * item[+]
    * linkId = "dcis.calcifications"
    * text = "Kalzifikationen"
    * answer.valueCoding = $sct#52101004 "Present (qualifier value)"

  * item[+]
    * linkId = "dcis.microinvasion"
    * text = "Mikroinvasion"
    * answer.valueCoding = $sct#2667000 "Absent (qualifier value)"

  * item[+]
    * linkId = "dcis.lcis"
    * text = "Begleitende lobuläre Neoplasie"
    * answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
