// =============================================================================
// QUESTIONNAIRE RESPONSE - BET MAMMA
// =============================================================================

Instance: QuestionnaireResponseBreastResection
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse - BET Mamma"
Description: "QuestionnaireResponse für BET Mamma mit allen Befunden"
* questionnaire = "http://breastcancerspec.org/Questionnaire/OP-Mamma"
* status = #completed
* subject = Reference(Patient4)
* authored = "2025-02-10T14:30:00+01:00"
* author = Reference(PathologistPractitioner)

* item[+]
  * linkId = "bet.root"
  * text = "BET Mamma"

  // --- Klinische Angaben (Group 10010) ---
  * item[+]
    * linkId = "bet.clinical"
    * text = "Klinische Angaben"
    * item[+]
      * linkId = "11951"
      * text = "Proben limitiert auswertbar"
      * answer.valueCoding = $sct#373067005 "No (qualifier value)"
    * item[+]
      * linkId = "11912"
      * text = "Präsentationsmodus"
      * answer.valueString = "Frisch"
    * item[+]
      * linkId = "11147"
      * text = "Klinische Befunde / Anlass"
      * answer.valueString = "Z.n. Stanzbiopsie mit Nachweis eines invasiven Mammakarzinoms NST, G2"
    * item[+]
      * linkId = "11923"
      * text = "Brustkrebsvorgeschichte"
      * answer.valueString = "Ersterkrankung"
    * item[+]
      * linkId = "11952"
      * text = "Vorchirurgische Therapie"
      * answer.valueCoding = $sct#373067005 "No (qualifier value)"
    * item[+]
      * linkId = "11918"
      * text = "Bildgebungsmodalität"
      * answer.valueString = "Mammografie, Ultraschall"
    * item[+]
      * linkId = "11953"
      * text = "Radiologische Ausdehnung"
      * answer.valueQuantity = 15 'mm' "mm"
    * item[+]
      * linkId = "10160"
      * text = "Befundmarkierung"
      * answer.valueString = "Drahthäkchen"
    * item[+]
      * linkId = "10130"
      * text = "Präparateradiographie"
      * answer.valueString = "Ja, beigelegt"
    * item[+]
      * linkId = "11954"
      * text = "Genetische Prädisposition"
      * answer.valueString = "Nicht bekannt"

  // --- Makroskopie ---
  * item[+]
    * linkId = "bet.macro"
    * text = "Makroskopie"
    * item[+]
      * linkId = "10900"
      * text = "Probengröße 1 (Länge)"
      * answer.valueQuantity = 65 'mm' "mm"
    * item[+]
      * linkId = "10910"
      * text = "Probengröße 2 (Breite)"
      * answer.valueQuantity = 45 'mm' "mm"
    * item[+]
      * linkId = "10920"
      * text = "Probengröße 3 (Tiefe)"
      * answer.valueQuantity = 30 'mm' "mm"
    * item[+]
      * linkId = "10890"
      * text = "Gewicht"
      * answer.valueQuantity = 55 'g' "g"
    * item[+]
      * linkId = "10030"
      * text = "Quadrant"
      * answer.valueCoding = $sct#33564002 "Structure of lower outer quadrant of breast (body structure)"
    * item[+]
      * linkId = "10040"
      * text = "Zifferblattlokalisation"
      * answer.valueString = "5 Uhr"
    * item[+]
      * linkId = "10070"
      * text = "Abstand Mamille"
      * answer.valueQuantity = 50 'mm' "mm"

  // --- Allgemein ---
  * item[+]
    * linkId = "bet.general"
    * text = "Allgemeine Befunde"
    * item[+]
      * linkId = "11130"
      * text = "Nichtinvasive Läsion"
      * answer.valueCoding = $sct#52101004 "Present (qualifier value)"
    * item[+]
      * linkId = "11270"
      * text = "Invasives Karzinom"
      * answer.valueCoding = $sct#52101004 "Present (qualifier value)"
    * item[+]
      * linkId = "11919"
      * text = "Operatives Verfahren"
      * answer.valueCoding = $sct#237371007 "Wide local excision of breast lesion (procedure)"
    * item[+]
      * linkId = "10140"
      * text = "Materialart"
      * answer.valueString = "Exzisionspräparat"
    * item[+]
      * linkId = "10800"
      * text = "Seitenlokalisation"
      * answer.valueCoding = $sct#7771000 "Left (qualifier value)"
    * item[+]
      * linkId = "11040"
      * text = "Anhängendes Gewebe"
      * answer.valueString = "Haut"
    * item[+]
      * linkId = "11440"
      * text = "Fokalität"
      * answer.valueString = "Unifokal"

  // --- Invasives Karzinom ---
  * item[+]
    * linkId = "bet.invasive"
    * text = "Invasives Karzinom"
    * item[+]
      * linkId = "11400"
      * text = "Max Durchmesser invasiv"
      * answer.valueQuantity = 18 'mm' "mm"
    * item[+]
      * linkId = "11420"
      * text = "Max Gesamtdurchmesser"
      * answer.valueQuantity = 22 'mm' "mm"
    * item[+]
      * linkId = "11280"
      * text = "Histologischer Tumortyp"
      * answer.valueCoding = $ICDO-3#8500/3 "Invasives duktales Karzinom (NST)"
    * item[+]
      * linkId = "11290"
      * text = "Morphologie Freitext"
      * answer.valueString = "Invasives Mammakarzinom des NST, überwiegend trabekuläres und solides Wachstumsmuster"
    * item[+]
      * linkId = "11330"
      * text = "Nottingham-Grad"
      * answer.valueString = "G2"
    * item[+]
      * linkId = "11340"
      * text = "Tubulus-Score"
      * answer.valueInteger = 3
    * item[+]
      * linkId = "11350"
      * text = "Kernpleomorphie-Score"
      * answer.valueInteger = 2
    * item[+]
      * linkId = "11925"
      * text = "Mitosezahl"
      * answer.valueString = "4/10 HPF"
    * item[+]
      * linkId = "11360"
      * text = "Mitoserate-Score"
      * answer.valueInteger = 1
    * item[+]
      * linkId = "11390"
      * text = "Elston-Ellis-Summenscore"
      * answer.valueInteger = 6
    * item[+]
      * linkId = "11300"
      * text = "Assoziiertes DCIS"
      * answer.valueCoding = $sct#52101004 "Present (qualifier value)"
    * item[+]
      * linkId = "149"
      * text = "DCIS Kerngrading"
      * answer.valueString = "Intermediär (Grad 2)"
    * item[+]
      * linkId = "150"
      * text = "DCIS Architektur"
      * answer.valueString = "Kribriform"
    * item[+]
      * linkId = "151"
      * text = "DCIS Nekrosen"
      * answer.valueString = "Fokal (Komedo-Nekrosen)"
    * item[+]
      * linkId = "11926"
      * text = "Tumorausdehnung"
      * answer.valueString = "Auf Brustdrüse beschränkt"

  // --- Resektionsränder ---
  * item[+]
    * linkId = "bet.margins"
    * text = "Resektionsränder"
    * item[+]
      * linkId = "11470"
      * text = "RR-Status invasiv"
      * answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
    * item[+]
      * linkId = "11490"
      * text = "Nächster tumorfreier RR"
      * answer.valueString = "Posterior"
    * item[+]
      * linkId = "11480"
      * text = "Mindestabstand invasiv"
      * answer.valueQuantity = 5 'mm' "mm"
    * item[+]
      * linkId = "11968"
      * text = "RR-Status nichtinvasiv"
      * answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
    * item[+]
      * linkId = "11970"
      * text = "Mindestabstand nichtinvasiv"
      * answer.valueQuantity = 3 'mm' "mm"

  // --- Weitere ---
  * item[+]
    * linkId = "bet.additional"
    * text = "Weitere Befunde"
    * item[+]
      * linkId = "11430"
      * text = "LVI"
      * answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
    * item[+]
      * linkId = "10880"
      * text = "Mikrokalzifikationen"
      * answer.valueString = "In DCIS assoziiert"

  // --- Biomarker ---
  * item[+]
    * linkId = "bet.biomarkers"
    * text = "Biomarker"
    * item[+]
      * linkId = "11750"
      * text = "ER-Status"
      * answer.valueCoding = $sct#52101004 "Present (qualifier value)"
    * item[+]
      * linkId = "11720"
      * text = "ER Prozent"
      * answer.valueInteger = 90
    * item[+]
      * linkId = "11730"
      * text = "ER Färbeintensität"
      * answer.valueString = "Stark"
    * item[+]
      * linkId = "11790"
      * text = "PR-Status"
      * answer.valueCoding = $sct#52101004 "Present (qualifier value)"
    * item[+]
      * linkId = "11760"
      * text = "PR Prozent"
      * answer.valueInteger = 60
    * item[+]
      * linkId = "11770"
      * text = "PR Färbeintensität"
      * answer.valueString = "Mäßig"
    * item[+]
      * linkId = "11810"
      * text = "HER2-Score (IHC)"
      * answer.valueString = "1+"
    * item[+]
      * linkId = "11820"
      * text = "HER2-Amplifikation (ISH)"
      * answer.valueString = "Nicht amplifiziert"
    * item[+]
      * linkId = "11830"
      * text = "HER2-Gesamtstatus"
      * answer.valueString = "Negativ"
    * item[+]
      * linkId = "11840"
      * text = "Ki-67-Index"
      * answer.valueInteger = 15

  // --- TNM ---
  * item[+]
    * linkId = "bet.tnm"
    * text = "TNM"
    * item[+]
      * linkId = "169"
      * text = "pT-Kategorie"
      * answer.valueString = "pT1c"

  // --- Kommentar ---
  * item[+]
    * linkId = "bet.comment"
    * text = "Kommentar"
    * item[+]
      * linkId = "11900"
      * text = "Kommentar"
      * answer.valueString = "Korrelation mit dem Vorbefund der Stanzbiopsie (E_25_105): Übereinstimmende Histologie (invasives Mammakarzinom NST, G2). Biomarkerprofil bestätigt: ER+, PR+, HER2-, Luminal-A-like. Empfehlung: Tumorkonferenz zur weiteren Therapieplanung."
