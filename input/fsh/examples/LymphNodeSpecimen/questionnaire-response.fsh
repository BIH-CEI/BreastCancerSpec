// =============================================================================
// QUESTIONNAIRE RESPONSE - SLN-BIOPSIE AXILLA
// =============================================================================

Instance: QuestionnaireResponseLymphNode
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse - SLN-Biopsie Axilla"
Description: "QuestionnaireResponse für SLN-Biopsie Axilla mit allen Befunden"
* questionnaire = "http://breastcancerspec.org/Questionnaire/OP_LN-Mamma"
* status = #completed
* subject = Reference(Patient4)
* authored = "2025-02-10T14:30:00+01:00"
* author = Reference(PathologistPractitioner)

* item[+]
  * linkId = "sln.root"
  * text = "SLN-Biopsie Axilla"

  // --- Klinische Angaben ---
  * item[+]
    * linkId = "sln.clinical"
    * text = "Klinische Angaben"
    * item[+]
      * linkId = "11951"
      * text = "Proben limitiert auswertbar"
      * answer.valueCoding = $sct#373067005 "No (qualifier value)"
    * item[+]
      * linkId = "11950"
      * text = "LK-Biopsie veranlassende klinische/bildgebende Befunde"
      * answer.valueString = "Invasives Mammakarzinom NST links, cN0"
    * item[+]
      * linkId = "11148"
      * text = "Bildgebende Befunde"
      * answer.valueString = "Mammografie, Sonographie: Axilla klinisch unauffällig"
    * item[+]
      * linkId = "10210"
      * text = "Neoadjuvante Therapie"
      * answer.valueCoding = $sct#373067005 "No (qualifier value)"

  // --- Makroskopie ---
  * item[+]
    * linkId = "sln.macro"
    * text = "Makroskopie"
    * item[+]
      * linkId = "sln.macro.sln1"
      * text = "SLN #1 Größe"
      * answer.valueString = "12 x 8 x 6 mm, Patentblau-markiert"
    * item[+]
      * linkId = "sln.macro.sln2"
      * text = "SLN #2 Größe"
      * answer.valueString = "10 x 7 x 5 mm, Patentblau-markiert"

  // --- Axilläre Lymphknotenpräparate ---
  * item[+]
    * linkId = "sln.findings"
    * text = "Axilläre Lymphknotenpräparate"
    * item[+]
      * linkId = "11540"
      * text = "LK OP Prozedur"
      * answer.valueCoding = $sct#396487001 "Sentinel lymph node biopsy (procedure)"
    * item[+]
      * linkId = "11620"
      * text = "Seitenangabe"
      * answer.valueCoding = $sct#7771000 "Left (qualifier value)"
    * item[+]
      * linkId = "11630"
      * text = "Anzahl der untersuchten (nonSLN)-axillären LK"
      * answer.valueInteger = 0
    * item[+]
      * linkId = "11640"
      * text = "Anzahl der befallenen (nonSLN)-axillären LK"
      * answer.valueInteger = 0
    * item[+]
      * linkId = "11650"
      * text = "Anzahl der untersuchten Sentinel-LK"
      * answer.valueInteger = 2
    * item[+]
      * linkId = "11660"
      * text = "Anzahl der befallenen Sentinel-LK"
      * answer.valueInteger = 1
    * item[+]
      * linkId = "11944"
      * text = "Gesamtzahl untersuchter Lymphknoten"
      * answer.valueInteger = 2
    * item[+]
      * linkId = "11945"
      * text = "Gesamtzahl befallener Lymphknoten"
      * answer.valueInteger = 1
    * item[+]
      * linkId = "11947"
      * text = "Gesamtzahl makrometastatisch befallener Lymphknoten"
      * answer.valueInteger = 0
    * item[+]
      * linkId = "11948"
      * text = "Gesamtzahl mikrometastatisch befallener Lymphknoten"
      * answer.valueInteger = 1
    * item[+]
      * linkId = "11946"
      * text = "Gesamtzahl ausschließlich ITC-befallener Lymphknoten"
      * answer.valueInteger = 0
    * item[+]
      * linkId = "11690"
      * text = "Ausdehnung der größten metastatischen Infiltration"
      * answer.valueQuantity = 1.2 'mm' "mm"
    * item[+]
      * linkId = "11700"
      * text = "Extranodale Infiltration durch LK-Metastase"
      * answer.valueCoding = $sct#2667000 "Absent (qualifier value)"

  // --- TNM ---
  * item[+]
    * linkId = "sln.tnm"
    * text = "Pathologisches TNM-Staging"
    * item[+]
      * linkId = "175"
      * text = "Regionäre Lymphknoten (pN-Kategorie)"
      * answer.valueString = "pN1mi(sn)"
