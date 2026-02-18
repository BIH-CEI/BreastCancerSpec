// =============================================================================
// QUESTIONNAIRE RESPONSE - LYMPHKNOTEN SPECIMENS
// =============================================================================

Instance: QuestionnaireResponseLymphNodeSpecimens
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse - Lymphknoten Specimens"
Description: "QuestionnaireResponse für Sentinel-Lymphknoten-Biopsie mit makroskopischen und diagnostischen Befunden"
* questionnaire = "http://breastcancerspec.org/Questionnaire/Lymph-Node-Specimens"
* status = #completed
* subject = Reference(Patient1)
* authored = "2024-07-19T14:30:00+01:00"
* author = Reference(PathologistPractitioner)

* item[+]
  * linkId = "ln.root"
  * text = "Sentinel-Lymphknoten Specimens"

  * item[+]
    * linkId = "ln.patient"
    * text = "Patientendaten"
    * item[+]
      * linkId = "ln.patient.name"
      * text = "Familienname"
      * answer.valueString = "Mueller"
    * item[+]
      * linkId = "ln.patient.given"
      * text = "Vorname"
      * answer.valueString = "Anna"
    * item[+]
      * linkId = "ln.patient.dob"
      * text = "Geburtsdatum"
      * answer.valueDate = "1962-04-20"
    * item[+]
      * linkId = "ln.patient.id"
      * text = "Patienten-Identifikator"
      * answer.valueString = "PAT-2024-101"
    * item[+]
      * linkId = "ln.patient.accession"
      * text = "Eingangs-/Fallnummer"
      * answer.valueString = "E_24_104"

  * item[+]
    * linkId = "ln.specimen"
    * text = "Untersuchungsmaterial"
    * item[+]
      * linkId = "ln.specimen.type"
      * text = "Art des Materials"
      * answer.valueString = "Sentinel-Lymphknoten"
    * item[+]
      * linkId = "ln.specimen.count"
      * text = "Anzahl erhaltener Lymphknoten"
      * answer.valueInteger = 2
    * item[+]
      * linkId = "ln.specimen.sln1.size"
      * text = "SLN1 Größe"
      * answer.valueString = "12 × 8 × 6 mm"
    * item[+]
      * linkId = "ln.specimen.sln2.size"
      * text = "SLN2 Größe"
      * answer.valueString = "10 × 7 × 5 mm"
    * item[+]
      * linkId = "ln.specimen.marking"
      * text = "Markierung"
      * answer.valueString = "Patentblau und Tc-99m"

  * item[+]
    * linkId = "ln.macroscopy"
    * text = "Makroskopie"
    * item[+]
      * linkId = "ln.macroscopy.sln1"
      * text = "SLN1 makroskopischer Befund"
      * answer.valueString = "12 × 8 × 6 mm, blau markiert, makroskopisch unauffällig"
    * item[+]
      * linkId = "ln.macroscopy.sln2"
      * text = "SLN2 makroskopischer Befund"
      * answer.valueString = "10 × 7 × 5 mm, blau markiert, makroskopisch unauffällig"

  * item[+]
    * linkId = "ln.diagnosis"
    * text = "Diagnostische Schlussfolgerung"
    * item[+]
      * linkId = "ln.diagnosis.ln_examined"
      * text = "Untersuchte Lymphknoten"
      * answer.valueInteger = 2
    * item[+]
      * linkId = "ln.diagnosis.ln_positive"
      * text = "Befallene Lymphknoten"
      * answer.valueInteger = 0
    * item[+]
      * linkId = "ln.diagnosis.sln_status"
      * text = "Sentinel-Lymphknoten-Status"
      * answer.valueString = "pN0(sn) - Sentinel-Lymphknoten tumorfrei"
    * item[+]
      * linkId = "ln.diagnosis.itc"
      * text = "Isolierte Tumorzellen (ITC)"
      * answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
    * item[+]
      * linkId = "ln.diagnosis.micrometastases"
      * text = "Mikrometastasen"
      * answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
    * item[+]
      * linkId = "ln.diagnosis.macrometastases"
      * text = "Makrometastasen"
      * answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
    * item[+]
      * linkId = "ln.diagnosis.extranodal_extension"
      * text = "Extranoduläre Extension"
      * answer.valueString = "Nicht anwendbar (tumorfreie Lymphknoten)"
    * item[+]
      * linkId = "ln.diagnosis.ihc_panzytokeratin"
      * text = "Panzytokeratin IHC (AE1/AE3)"
      * answer.valueString = "Negativ"
    * item[+]
      * linkId = "ln.diagnosis.pn_stage"
      * text = "pN-Stadium"
      * answer.valueCoding = $sct#1229951005 "American Joint Committee on Cancer pN0 (qualifier value)"
