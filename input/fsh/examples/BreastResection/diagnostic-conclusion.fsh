// ============================================================================
// DIAGNOSTIC CONCLUSION - BET MAMMA
// ============================================================================

Instance: BreastResectionDiagnosticConclusionGrouper
InstanceOf: MII_PR_Patho_Diagnostic_Conclusion_Grouper
Usage: #example
Title: "Diagnostic Conclusion Grouper - BET Mamma"
Description: "Grouper for all diagnostic conclusion findings in breast resection"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22637-3
* subject = Reference(Patient4)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// Allgemein (7)
* hasMember[+] = Reference(BreastResectionNonInvasiveLesion)
* hasMember[+] = Reference(BreastResectionInvasiveCarcinoma)
* hasMember[+] = Reference(BreastResectionOperativeProcedure)
* hasMember[+] = Reference(BreastResectionMaterialType)
* hasMember[+] = Reference(BreastResectionLaterality)
* hasMember[+] = Reference(BreastResectionAttachedTissue)
* hasMember[+] = Reference(BreastResectionFocality)
// Invasives Karzinom (15)
* hasMember[+] = Reference(BreastResectionMaxDiameterInvasive)
* hasMember[+] = Reference(BreastResectionMaxOverallDiameter)
* hasMember[+] = Reference(BreastResectionHistologicalType)
* hasMember[+] = Reference(BreastResectionMorphologyFreeText)
* hasMember[+] = Reference(BreastResectionNottinghamGrade)
* hasMember[+] = Reference(BreastResectionTubuleScore)
* hasMember[+] = Reference(BreastResectionNuclearPleomorphism)
* hasMember[+] = Reference(BreastResectionMitosisCount)
* hasMember[+] = Reference(BreastResectionMitoticRateScore)
* hasMember[+] = Reference(BreastResectionElstonEllisScore)
* hasMember[+] = Reference(BreastResectionAssociatedDCIS)
* hasMember[+] = Reference(BreastResectionDCISGrade)
* hasMember[+] = Reference(BreastResectionDCISArchitecture)
* hasMember[+] = Reference(BreastResectionDCISNecrosis)
* hasMember[+] = Reference(BreastResectionTumorExtent)
// Resektionsränder (5)
* hasMember[+] = Reference(BreastResectionMarginStatusInvasive)
* hasMember[+] = Reference(BreastResectionClosestMargin)
* hasMember[+] = Reference(BreastResectionMinDistanceInvasive)
* hasMember[+] = Reference(BreastResectionMarginStatusNonInvasive)
* hasMember[+] = Reference(BreastResectionMinDistanceNonInvasive)
// Weitere (2)
* hasMember[+] = Reference(BreastResectionLVI)
* hasMember[+] = Reference(BreastResectionMicrocalcification)
// Biomarker (10)
* hasMember[+] = Reference(BreastResectionERStatus)
* hasMember[+] = Reference(BreastResectionERPercentage)
* hasMember[+] = Reference(BreastResectionERIntensity)
* hasMember[+] = Reference(BreastResectionPRStatus)
* hasMember[+] = Reference(BreastResectionPRPercentage)
* hasMember[+] = Reference(BreastResectionPRIntensity)
* hasMember[+] = Reference(BreastResectionHER2IHC)
* hasMember[+] = Reference(BreastResectionHER2ISH)
* hasMember[+] = Reference(BreastResectionHER2Overall)
* hasMember[+] = Reference(BreastResectionKi67)
// TNM (1)
* hasMember[+] = Reference(BreastResectionPT)
// Kommentar (1)
* hasMember[+] = Reference(BreastResectionComment)


// ============================================================================
// ALLGEMEIN (7 Observations)
// ============================================================================

// --- 1. Nichtinvasive Läsion (linkId 11130) ---
Instance: BreastResectionNonInvasiveLesion
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Nichtinvasive Läsion - BET"
Description: "Vorhandensein einer nichtinvasiven Läsion"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#189336000 "Carcinoma in situ of breast (disorder)"
* code.text = "Nichtinvasive maligne Läsion"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "Ja"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 2. Invasives Karzinom (linkId 11270) ---
Instance: BreastResectionInvasiveCarcinoma
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Invasives Karzinom - BET"
Description: "Vorhandensein eines invasiven Karzinoms"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#254837009 "Malignant tumor of breast (disorder)"
* code.text = "Invasives Karzinom"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "Ja"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 3. Operatives Verfahren (linkId 11919) ---
Instance: BreastResectionOperativeProcedure
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Operatives Verfahren - BET"
Description: "Art des operativen Verfahrens"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#29306-8 "Surgery procedure"
* code.coding[+] = $sct#2620001000004108 "Specimen collection procedure (observable entity)"
* code.text = "Operatives Verfahren"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#237371007 "Wide local excision of breast lesion (procedure)"
* valueCodeableConcept.text = "Brusterhaltende Therapie (BET)"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 4. Materialart (linkId 10140) ---
Instance: BreastResectionMaterialType
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Materialart - BET"
Description: "Art des eingesendeten Materials"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#66746-9 "Specimen type"
* code.text = "Materialart"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept.text = "Exzisionspräparat"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 5. Seitenlokalisation (linkId 10800) ---
Instance: BreastResectionLaterality
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenlokalisation - BET"
Description: "Seitenlokalisation des Präparats"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#384727002 "Specimen laterality (observable entity)"
* code.text = "Seitenlokalisation der Probe"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#7771000 "Left (qualifier value)"
* valueCodeableConcept.text = "Links"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 6. Anhängendes Gewebe (linkId 11040) ---
Instance: BreastResectionAttachedTissue
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anhängendes Gewebe - BET"
Description: "Art des anhängenden Gewebes am Präparat"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85298-8 "Body structure included in specimen [Anatomy] in Specimen"
* code.text = "Material/anhängendes Gewebe"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#39937001 "Skin structure (body structure)"
* valueCodeableConcept.text = "Haut"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 7. Fokalität (linkId 11440) ---
Instance: BreastResectionFocality
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Fokalität - BET"
Description: "Fokalität des Tumors"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#1157128007 "Qualitative distribution of primary malignant neoplasm of breast in excised breast specimen (observable entity)"
* code.text = "(Multi)fokalität"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept.text = "Unifokal"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// ============================================================================
// INVASIVES KARZINOM — Group 11103 (15 Observations)
// ============================================================================

// --- 8. Max Durchmesser invasiv (linkId 11400) ---
Instance: BreastResectionMaxDiameterInvasive
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Max Durchmesser invasiv - BET"
Description: "Maximaler Durchmesser der invasiven Komponente"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#44635-1 "Inv comp size max dim BT"
* code.coding[+] = $sct#200001000004104 "Greatest length dimension of excised primary malignant neoplasm (observable entity)"
* code.text = "Maximaler Durchmesser invasives Karzinom"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueQuantity = 18 'mm' "mm"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 9. Max Gesamtdurchmesser (linkId 11420) ---
Instance: BreastResectionMaxOverallDiameter
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Max Gesamtdurchmesser - BET"
Description: "Maximaler Gesamtdurchmesser des Tumors inkl. DCIS"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#33728-7 "Size.maximum dimension in Tumor"
* code.text = "Maximaler Gesamtdurchmesser der Läsion"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueQuantity = 22 'mm' "mm"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 10. Histologischer Tumortyp (linkId 11280) ---
Instance: BreastResectionHistologicalType
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histologischer Tumortyp - BET"
Description: "Histologischer Typ nach WHO/ICD-O-3"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#44638-5 "Histo type BT"
* code.coding[+] = $sct#1660001000004100 "Histologic type of primary malignant neoplasm of breast (observable entity)"
* code.text = "Histologischer Tumortyp WHO"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $ICDO-3#8500/3 "Invasives duktales Karzinom (NST)"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 11. Morphologie Freitext (linkId 11290) ---
Instance: BreastResectionMorphologyFreeText
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Morphologie Freitext - BET"
Description: "Freitextbeschreibung der Tumormorphologie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* code.text = "Morphologie Freitext"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueString = "Invasives Mammakarzinom des NST (kein spezieller Typ), maximal 18 mm messend. Das Karzinom zeigt ein überwiegend trabekuläres und solides Wachstumsmuster mit mäßiger Kern- und Zellpolymorphie. Mitosen sind vereinzelt nachweisbar (4/10 HPF). In der Tumorperipherie zeigt sich ein begleitendes duktales Carcinoma in situ (DCIS) mit intermediärem Kerngrad und überwiegend kribriformem Wachstumsmuster, maximal 8 mm. Fokale Komedo-Nekrosen. Assoziierte Mikroverkalkungen im DCIS-Areal. Alle Resektionsränder tumorfrei. Mindestabstand invasiv: 5 mm (posterior), DCIS: 3 mm. Keine Lymphgefäßinvasion."
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 12. Nottingham-Grad (linkId 11330) ---
Instance: BreastResectionNottinghamGrade
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Nottingham-Grad - BET"
Description: "Nottingham histologic grade"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44648-4 "Histologic grade [Score] in Breast cancer specimen by Nottingham"
* code.text = "Histologischer Tumorgrad (Elston-Ellis-Grad)"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#1155703007 "G2: Moderately differentiated histologic grade (qualifier value)"
* valueCodeableConcept.text = "Nottingham Grad 2 (Score 6)"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 13. Tubulus-Score (linkId 11340) ---
Instance: BreastResectionTubuleScore
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tubulus-Score - BET"
Description: "Glandular differentiation score by Nottingham"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85321-8 "Glandular differentiation [Score] in Breast cancer specimen by Nottingham"
* code.text = "Tubulus Scorewert"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueQuantity = 3 '{score}' "score"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 14. Kernpleomorphie-Score (linkId 11350) ---
Instance: BreastResectionNuclearPleomorphism
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Kernpleomorphie-Score - BET"
Description: "Nuclear pleomorphism score by Nottingham"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44645-0 "Nuclear pleomorphism in Breast tumor by Nottingham"
* code.text = "Kernpleomorphie Scorewert"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueQuantity = 2 '{score}' "score"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 15. Mitosezahl (linkId 11925) ---
Instance: BreastResectionMitosisCount
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Mitosezahl - BET"
Description: "Absolute Mitosezahl pro 10 HPF"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#406094009 "Number of mitoses per 10 high power fields (observable entity)"
* code.text = "Mitosezahl"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueQuantity = 4 '{HPF}' "per 10 HPF"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 16. Mitoserate-Score (linkId 11360) ---
Instance: BreastResectionMitoticRateScore
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Mitoserate-Score - BET"
Description: "Mitotic rate score by Nottingham"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85300-2 "Mitotic rate [Score] in Breast cancer specimen by Nottingham"
* code.text = "Mitoserate Scorewert"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueQuantity = 1 '{score}' "score"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 17. Elston-Ellis-Summenscore (linkId 11390) ---
Instance: BreastResectionElstonEllisScore
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Elston-Ellis Summenscore - BET"
Description: "Elston-Ellis summary score (3+2+1=6)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#1287461000 "Nottingham total score of primary malignant neoplasm of breast (observable entity)"
* code.text = "Elston-Ellis-Summenscore"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueQuantity = 6 '{score}' "score"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 18. Assoziiertes DCIS (linkId 11300) ---
Instance: BreastResectionAssociatedDCIS
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Assoziiertes DCIS - BET"
Description: "Vorhandensein eines assoziierten DCIS"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85336-6 "DCIS intraduct ext Br ca spec Ql Micro"
* code.text = "Klassifikation eines assoziiertes DCIS"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "DCIS vorhanden"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 19. DCIS Kerngrading (linkId 149) ---
Instance: BreastResectionDCISGrade
InstanceOf: $mii-patho-finding
Usage: #example
Title: "DCIS Kerngrading - BET"
Description: "Kerngrading des assoziierten DCIS"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#2890001000004108 "Nuclear grade of ductal carcinoma in situ of breast (observable entity)"
* code.text = "Kerngrading / WHO-Grading nichtinvasiv"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept.text = "Intermediär (Grad 2)"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 20. DCIS Architektur (linkId 150) ---
Instance: BreastResectionDCISArchitecture
InstanceOf: $mii-patho-finding
Usage: #example
Title: "DCIS Architektur - BET"
Description: "Wachstumsmuster des assoziierten DCIS"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#85302-8 "Growth pattern of DCIS [Type] in Breast cancer specimen by Light microscopy"
* code.coding[+] = $sct#3400001000004108 "Architectural pattern of ductal carcinoma in situ in breast (observable entity)"
* code.text = "DCIS Architektur"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#443987001 "Cribriform neoplasm pattern (finding)"
* valueCodeableConcept.text = "kribriformer Typ"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 21. DCIS Nekrosen (linkId 151) ---
Instance: BreastResectionDCISNecrosis
InstanceOf: $mii-patho-finding
Usage: #example
Title: "DCIS Nekrosen - BET"
Description: "Nekrosen im DCIS-Areal"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85340-8 "DCIS necrosis [Type] in Breast cancer specimen by Light microscopy"
* code.text = "Nekrosen"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept.text = "Fokal (Komedo-Nekrosen)"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 22. Tumorausdehnung (linkId 11926) ---
Instance: BreastResectionTumorExtent
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumorausdehnung - BET"
Description: "Ausdehnung des Tumors in Bezug auf die Brustdrüse"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#85322-6 "Adjacent structure invaded by tumor [Anatomy] in Breast cancer specimen by Light microscopy"
* code.coding[+] = $sct#396645007 "Status of extension by tumor (observable entity)"
* code.coding[+] = $sct#3280001000004106 "Anatomic location directly invaded by primary malignant neoplasm of breast (observable entity)"
* code.text = "Tumorausdehnung"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept.text = "Auf Brustdrüse beschränkt"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// ============================================================================
// RESEKTIONSRÄNDER BET — Group 11957 (5 Observations)
// ============================================================================

// --- 23. RR-Status invasiv (linkId 11470) ---
Instance: BreastResectionMarginStatusInvasive
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Resektionsrandstatus invasiv - BET"
Description: "Resektionsrandstatus der invasiven Komponente"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#44669-0 "Margin involved BT"
* code.coding[+] = $sct#371488000 "Presence of neoplasm at excised surgical margin (observable entity)"
* code.coding[+] = $sct#1240395000 "Surgical margin involved by primary malignant neoplasm of breast in excised breast specimen (observable entity)"
* code.text = "Resektionsrandstatus invasiv"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideRR-Superior-HE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Nicht befallen (R0)"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 24. Nächster tumorfreier RR (linkId 11490) ---
Instance: BreastResectionClosestMargin
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Nächster tumorfreier Resektionsrand - BET"
Description: "Lokalisation des nächsten tumorfreien Resektionsrands"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#44674-0 "IC uninv marg closest BT"
* code.coding[+] = $sct#170001000004107 "Surgical margin closest to malignant neoplasm in excised specimen of breast (observable entity)"
* code.text = "Richtung des nächsten tumorfreien RR"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideRR-Superior-HE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept.text = "Posterior"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 25. Mindestabstand invasiv (linkId 11480) ---
Instance: BreastResectionMinDistanceInvasive
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Mindestabstand invasiv - BET"
Description: "Mindestabstand der invasiven Komponente zum Resektionsrand"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#44672-4 "IC uninv marg dist closest BT"
* code.coding[+] = $sct#373120008 "Distance of invasive carcinoma of breast from closest surgical margin in excised breast specimen (observable entity)"
* code.text = "Mindestabstand des invasiven Tumor zum nächstgelegenen Resektionsrand"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideRR-Superior-HE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueQuantity = 5 'mm' "mm"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 26. RR-Status nichtinvasiv (linkId 11968) ---
Instance: BreastResectionMarginStatusNonInvasive
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Resektionsrandstatus nichtinvasiv - BET"
Description: "Resektionsrandstatus der nichtinvasiven Komponente (DCIS)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#85334-1 "Surgical margin DCIS involvement [Presence] in Breast cancer specimen by Light microscopy"
* code.coding[+] = $sct#384705006 "Presence of ductal carcinoma in situ at surgical margin in excised specimen of breast (observable entity)"
* code.text = "Resektionsrandstatus nichtinvasiv"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideRR-Superior-HE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Nicht befallen"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 27. Mindestabstand nichtinvasiv (linkId 11970) ---
Instance: BreastResectionMinDistanceNonInvasive
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Mindestabstand nichtinvasiv - BET"
Description: "Mindestabstand der nichtinvasiven Komponente (DCIS) zum Resektionsrand"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44673-2 "DCIS.uninv marg dist.closest BT"
* code.text = "Mindestabstand vom RR zum nichtinvasiven Tumor"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideRR-Superior-HE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueQuantity = 3 'mm' "mm"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// ============================================================================
// WEITERE (2 Observations)
// ============================================================================

// --- 28. LVI (linkId 11430) ---
Instance: BreastResectionLVI
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Lymphgefäßinvasion - BET"
Description: "Lymphovaskuläre Invasion"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#59544-7 "Lymph-vascular invasion Ca spec"
* code.coding[+] = $sct#371512006 "Presence of direct invasion by primary malignant neoplasm to lymphatic vessel and/or small blood vessel (observable entity)"
* code.text = "Peritumorale Gefäßinvasion"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Nicht nachgewiesen"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 29. Mikrokalzifikationen (linkId 10880) ---
Instance: BreastResectionMicrocalcification
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Mikrokalzifikationen - BET"
Description: "Vorhandensein von Mikrokalzifikationen"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#1240404008 "Presence of microcalcification in excised breast specimen (observable entity)"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $loinc#LA27826-9 "Microcalcifications present in DCIS"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// ============================================================================
// BIOMARKER — Group 11104 (10 Observations)
// ============================================================================

// --- 30. ER-Status (linkId 11750) ---
Instance: BreastResectionERStatus
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Östrogenrezeptor-Status - BET"
Description: "Östrogenrezeptor-Status per Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#16112-5 "Estrogen receptor [Interpretation] in Tissue"
* code.coding[+] = $sct#1234806008 "Observation using immunohistochemistry (observable entity)"
* code.text = "Hormonrezeptorstatus Östrogen"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideER01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "Positiv"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3467 "ESR1"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 31. ER Prozent (linkId 11720) ---
Instance: BreastResectionERPercentage
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Östrogenrezeptor Prozent - BET"
Description: "Prozentsatz ER-positiver Tumorzellkerne"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#85329-1 "Cells.estrogen receptor/cells in Breast cancer specimen by Immune stain"
* code.coding[+] = $sct#1234804006 "Percent of cells with estrogen receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
* code.coding[+] = $sct#1234806008 "Observation using immunohistochemistry (observable entity)"
* code.text = "PP ER"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideER01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueQuantity.value = 90
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3467 "ESR1"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 32. ER Färbeintensität (linkId 11730) ---
Instance: BreastResectionERIntensity
InstanceOf: $mii-patho-finding
Usage: #example
Title: "ER Färbeintensität - BET"
Description: "Färbeintensität der ER-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#85310-1 "Estrogen receptor fluorescence intensity [Type] in Breast cancer specimen by Immune stain"
* code.coding[+] = $sct#1236874005 "Intensity of stain of estrogen receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
* code.coding[+] = $sct#1234806008 "Observation using immunohistochemistry (observable entity)"
* code.text = "Färbeintensität ER"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideER01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#24484000 "Severe (severity modifier) (qualifier value)"
* valueCodeableConcept.text = "Stark"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3467 "ESR1"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 33. PR-Status (linkId 11790) ---
Instance: BreastResectionPRStatus
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Progesteronrezeptor-Status - BET"
Description: "Progesteronrezeptor-Status per Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#16113-3 "Progesterone receptor [Interpretation] in Tissue"
* code.coding[+] = $sct#1234806008 "Observation using immunohistochemistry (observable entity)"
* code.text = "Hormonrezeptorstatus Progesteron"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlidePR01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "Positiv"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:8910 "PGR"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 34. PR Prozent (linkId 11760) ---
Instance: BreastResectionPRPercentage
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Progesteronrezeptor Prozent - BET"
Description: "Prozentsatz PR-positiver Tumorzellkerne"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#85325-9 "Cells.progesterone receptor/cells in Breast cancer specimen by Immune stain"
* code.coding[+] = $sct#1234803000 "Percent of cells with progesterone receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
* code.coding[+] = $sct#1234806008 "Observation using immunohistochemistry (observable entity)"
* code.text = "PP PR"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlidePR01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueQuantity.value = 60
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:8910 "PGR"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 35. PR Färbeintensität (linkId 11770) ---
Instance: BreastResectionPRIntensity
InstanceOf: $mii-patho-finding
Usage: #example
Title: "PR Färbeintensität - BET"
Description: "Färbeintensität der PR-Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#85331-7 "Progesterone receptor fluorescence intensity [Type] in Breast cancer specimen by Immune stain"
* code.coding[+] = $sct#1237278006 "Intensity of stain of progesterone receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
* code.coding[+] = $sct#1234806008 "Observation using immunohistochemistry (observable entity)"
* code.text = "Färbeintensität PR"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlidePR01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#6736007 "Moderate (severity modifier) (qualifier value)"
* valueCodeableConcept.text = "Mäßig"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:8910 "PGR"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 36. HER2-Score (IHC) (linkId 11810) ---
Instance: BreastResectionHER2IHC
InstanceOf: $mii-patho-finding
Usage: #example
Title: "HER2-Score (IHC) - BET"
Description: "HER2-Score per Immunhistochemie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#85319-2 "HER2 [Presence] in Breast cancer specimen by Immune stain"
* code.coding[+] = $sct#3550001000004108 "Presence of receptor tyrosine-protein kinase erbB-2 in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
* code.coding[+] = $sct#1234806008 "Observation using immunohistochemistry (observable entity)"
* code.text = "Her2 Score"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHER2IHC01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept.text = "1+"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3430 "ERBB2"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 37. HER2-Amplifikation (ISH) (linkId 11820) ---
Instance: BreastResectionHER2ISH
InstanceOf: $mii-patho-finding
Usage: #example
Title: "HER2 Amplifikation (ISH) - BET"
Description: "HER2-Amplifikationsstatus per In-situ-Hybridisierung"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85318-4 "ERBB2 gene duplication [Presence] in Breast cancer specimen by FISH"
* code.text = "Her2 Amplifikation"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHER2IHC01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Nicht amplifiziert"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3430 "ERBB2"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 38. HER2-Gesamtstatus (linkId 11830) ---
Instance: BreastResectionHER2Overall
InstanceOf: $mii-patho-finding
Usage: #example
Title: "HER2 Gesamtstatus - BET"
Description: "HER2-Gesamtstatus basierend auf IHC und ISH"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#48676-1 "HER2 [Interpretation] in Tissue"
* code.text = "Her2neuStatus"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHER2IHC01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Negativ"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3430 "ERBB2"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// --- 39. Ki-67-Index (linkId 11840) ---
Instance: BreastResectionKi67
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Ki-67 Index - BET"
Description: "Ki-67 Proliferationsindex"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[0] = $loinc#85330-9 "Cells.Ki-67 nuclear Ag/cells in Breast cancer specimen by Immune stain"
* code.coding[+] = $sct#1237281001 "Percent of cell nuclei positive for proliferation marker protein Ki-67 in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
* code.coding[+] = $sct#1234806008 "Observation using immunohistochemistry (observable entity)"
* code.text = "Ki67-Index"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideKi67-01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueQuantity.value = 15
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:7107 "MKI67"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// ============================================================================
// TNM — Group 167 (1 Observation)
// ============================================================================

// --- 40. pT-Kategorie (linkId 169) ---
Instance: BreastResectionPT
InstanceOf: $mii-tnm-t
Usage: #example
Title: "pT-Kategorie - BET"
Description: "Pathologische T-Kategorie nach TNM"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie|2026.0.0"
* status = #final
* code.coding[0] = $loinc#21899-0 "Primary tumor.pathology Cancer"
* code.coding[+] = $sct#384625004 "pT category (observable entity)"
* code.text = "Primärtumor (pT-Kategorie)"
* subject = Reference(Patient4)
* specimen = Reference(BreastResectionSpecimenSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueCodeableConcept = $sct#1352559008 "Union for International Cancer Control pT1 (qualifier value)"
* valueCodeableConcept.text = "pT1"
* derivedFrom = Reference(QuestionnaireResponseBreastResection)

// ============================================================================
// KOMMENTAR (1 Observation)
// ============================================================================

// --- 41. Kommentar (linkId 11900) ---
Instance: BreastResectionComment
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Kommentar - BET"
Description: "Freitextkommentar zum Befund"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#22638-1 "Pathology report comments [Interpretation] Narrative"
* code.text = "Kommentar"
* subject = Reference(Patient4)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(BreastResectionReportRequest)
* valueString = "Korrelation mit dem Vorbefund der Stanzbiopsie (E_25_105): Übereinstimmende Histologie (invasives Mammakarzinom NST, G2). Biomarkerprofil bestätigt: ER+, PR+, HER2-, Luminal-A-like. Empfehlung: Tumorkonferenz zur weiteren Therapieplanung."
* derivedFrom = Reference(QuestionnaireResponseBreastResection)
