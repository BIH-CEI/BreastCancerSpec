// ============================================================================
// DIAGNOSTIC CONCLUSION - INTEGRIERTER BEFUND (BET + SLN)
// ============================================================================

Instance: IntegratedDiagnosticConclusionGrouper
InstanceOf: MII_PR_Patho_Diagnostic_Conclusion_Grouper
Usage: #example
Title: "Diagnostic Conclusion Grouper - Integrated BET + SLN"
Description: "Grouper for all diagnostic conclusion findings in integrated breast resection and sentinel lymph node report"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22637-3
* subject = Reference(Patient4)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* derivedFrom[+] = Reference(IntegratedQRBreastResection)
* derivedFrom[+] = Reference(IntegratedQRLymphNode)

// --- BET-Befunde (41) ---
// Allgemein (7)
* hasMember[+] = Reference(IntegratedNonInvasiveLesion)
* hasMember[+] = Reference(IntegratedInvasiveCarcinoma)
* hasMember[+] = Reference(IntegratedOperativeProcedure)
* hasMember[+] = Reference(IntegratedMaterialType)
* hasMember[+] = Reference(IntegratedLaterality)
* hasMember[+] = Reference(IntegratedAttachedTissue)
* hasMember[+] = Reference(IntegratedFocality)
// Invasives Karzinom (15)
* hasMember[+] = Reference(IntegratedMaxDiameterInvasive)
* hasMember[+] = Reference(IntegratedMaxOverallDiameter)
* hasMember[+] = Reference(IntegratedHistologicalType)
* hasMember[+] = Reference(IntegratedMorphologyFreeText)
* hasMember[+] = Reference(IntegratedNottinghamGrade)
* hasMember[+] = Reference(IntegratedTubuleScore)
* hasMember[+] = Reference(IntegratedNuclearPleomorphism)
* hasMember[+] = Reference(IntegratedMitosisCount)
* hasMember[+] = Reference(IntegratedMitoticRateScore)
* hasMember[+] = Reference(IntegratedElstonEllisScore)
* hasMember[+] = Reference(IntegratedAssociatedDCIS)
* hasMember[+] = Reference(IntegratedDCISGrade)
* hasMember[+] = Reference(IntegratedDCISArchitecture)
* hasMember[+] = Reference(IntegratedDCISNecrosis)
* hasMember[+] = Reference(IntegratedTumorExtent)
// Resektionsränder (5)
* hasMember[+] = Reference(IntegratedMarginStatusInvasive)
* hasMember[+] = Reference(IntegratedClosestMargin)
* hasMember[+] = Reference(IntegratedMinDistanceInvasive)
* hasMember[+] = Reference(IntegratedMarginStatusNonInvasive)
* hasMember[+] = Reference(IntegratedMinDistanceNonInvasive)
// Weitere (2)
* hasMember[+] = Reference(IntegratedLVI)
* hasMember[+] = Reference(IntegratedMicrocalcification)
// Biomarker (10)
* hasMember[+] = Reference(IntegratedERStatus)
* hasMember[+] = Reference(IntegratedERPercentage)
* hasMember[+] = Reference(IntegratedERIntensity)
* hasMember[+] = Reference(IntegratedPRStatus)
* hasMember[+] = Reference(IntegratedPRPercentage)
* hasMember[+] = Reference(IntegratedPRIntensity)
* hasMember[+] = Reference(IntegratedHER2IHC)
* hasMember[+] = Reference(IntegratedHER2ISH)
* hasMember[+] = Reference(IntegratedHER2Overall)
* hasMember[+] = Reference(IntegratedKi67)
// TNM BET (1)
* hasMember[+] = Reference(IntegratedPT)
// Kommentar BET (1)
* hasMember[+] = Reference(IntegratedBETComment)

// --- SLN-Befunde (15) ---
// LK-Befunde (15)
* hasMember[+] = Reference(IntegratedLymphNodeProcedure)
* hasMember[+] = Reference(IntegratedLymphNodeLaterality)
* hasMember[+] = Reference(IntegratedNonSLNExamined)
* hasMember[+] = Reference(IntegratedNonSLNPositive)
* hasMember[+] = Reference(IntegratedSLNExamined)
* hasMember[+] = Reference(IntegratedSLNPositive)
* hasMember[+] = Reference(IntegratedTotalExamined)
* hasMember[+] = Reference(IntegratedTotalPositive)
* hasMember[+] = Reference(IntegratedMacroMetCount)
* hasMember[+] = Reference(IntegratedMicroMetCount)
* hasMember[+] = Reference(IntegratedITCCount)
* hasMember[+] = Reference(IntegratedLargestMetSize)
* hasMember[+] = Reference(IntegratedExtranodalExtension)
* hasMember[+] = Reference(IntegratedPN)
* hasMember[+] = Reference(IntegratedSLNComment)


// ============================================================================
// BET FINDINGS — ALLGEMEIN (7 Observations)
// ============================================================================

// --- 1. Nichtinvasive Läsion (linkId 11130) ---
Instance: IntegratedNonInvasiveLesion
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "Ja"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 2. Invasives Karzinom (linkId 11270) ---
Instance: IntegratedInvasiveCarcinoma
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "Ja"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 3. Operatives Verfahren (linkId 11919) ---
Instance: IntegratedOperativeProcedure
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
* specimen = Reference(IntegratedBETSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#237371007 "Wide local excision of breast lesion (procedure)"
* valueCodeableConcept.text = "Brusterhaltende Therapie (BET)"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 4. Materialart (linkId 10140) ---
Instance: IntegratedMaterialType
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
* specimen = Reference(IntegratedBETSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept.text = "Exzisionspräparat"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 5. Seitenlokalisation (linkId 10800) ---
Instance: IntegratedLaterality
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
* specimen = Reference(IntegratedBETSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#7771000 "Left (qualifier value)"
* valueCodeableConcept.text = "Links"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 6. Anhängendes Gewebe (linkId 11040) ---
Instance: IntegratedAttachedTissue
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
* specimen = Reference(IntegratedBETSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#39937001 "Skin structure (body structure)"
* valueCodeableConcept.text = "Haut"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 7. Fokalität (linkId 11440) ---
Instance: IntegratedFocality
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept.text = "Unifokal"
* derivedFrom = Reference(IntegratedQRBreastResection)

// ============================================================================
// BET FINDINGS — INVASIVES KARZINOM (15 Observations)
// ============================================================================

// --- 8. Max Durchmesser invasiv (linkId 11400) ---
Instance: IntegratedMaxDiameterInvasive
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity = 18 'mm' "mm"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 9. Max Gesamtdurchmesser (linkId 11420) ---
Instance: IntegratedMaxOverallDiameter
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity = 22 'mm' "mm"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 10. Histologischer Tumortyp (linkId 11280) ---
Instance: IntegratedHistologicalType
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $ICDO-3#8500/3 "Invasives duktales Karzinom (NST)"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 11. Morphologie Freitext (linkId 11290) ---
Instance: IntegratedMorphologyFreeText
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueString = "Invasives Mammakarzinom des NST (kein spezieller Typ), maximal 18 mm messend. Das Karzinom zeigt ein überwiegend trabekuläres und solides Wachstumsmuster mit mäßiger Kern- und Zellpolymorphie. Mitosen sind vereinzelt nachweisbar (4/10 HPF). In der Tumorperipherie zeigt sich ein begleitendes duktales Carcinoma in situ (DCIS) mit intermediärem Kerngrad und überwiegend kribriformem Wachstumsmuster, maximal 8 mm. Fokale Komedo-Nekrosen. Assoziierte Mikroverkalkungen im DCIS-Areal. Alle Resektionsränder tumorfrei. Mindestabstand invasiv: 5 mm (posterior), DCIS: 3 mm. Keine Lymphgefäßinvasion."
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 12. Nottingham-Grad (linkId 11330) ---
Instance: IntegratedNottinghamGrade
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#1155703007 "G2: Moderately differentiated histologic grade (qualifier value)"
* valueCodeableConcept.text = "Nottingham Grad 2 (Score 6)"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 13. Tubulus-Score (linkId 11340) ---
Instance: IntegratedTubuleScore
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity = 3 '{score}' "score"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 14. Kernpleomorphie-Score (linkId 11350) ---
Instance: IntegratedNuclearPleomorphism
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity = 2 '{score}' "score"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 15. Mitosezahl (linkId 11925) ---
Instance: IntegratedMitosisCount
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity = 4 '{HPF}' "per 10 HPF"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 16. Mitoserate-Score (linkId 11360) ---
Instance: IntegratedMitoticRateScore
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity = 1 '{score}' "score"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 17. Elston-Ellis-Summenscore (linkId 11390) ---
Instance: IntegratedElstonEllisScore
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity = 6 '{score}' "score"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 18. Assoziiertes DCIS (linkId 11300) ---
Instance: IntegratedAssociatedDCIS
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "DCIS vorhanden"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 19. DCIS Kerngrading (linkId 149) ---
Instance: IntegratedDCISGrade
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept.text = "Intermediär (Grad 2)"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 20. DCIS Architektur (linkId 150) ---
Instance: IntegratedDCISArchitecture
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#443987001 "Cribriform neoplasm pattern (finding)"
* valueCodeableConcept.text = "kribriformer Typ"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 21. DCIS Nekrosen (linkId 151) ---
Instance: IntegratedDCISNecrosis
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept.text = "Fokal (Komedo-Nekrosen)"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 22. Tumorausdehnung (linkId 11926) ---
Instance: IntegratedTumorExtent
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept.text = "Auf Brustdrüse beschränkt"
* derivedFrom = Reference(IntegratedQRBreastResection)

// ============================================================================
// BET FINDINGS — RESEKTIONSRÄNDER (5 Observations)
// ============================================================================

// --- 23. RR-Status invasiv (linkId 11470) ---
Instance: IntegratedMarginStatusInvasive
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
* specimen = Reference(IntegratedBETSlideRR-Superior-HE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Nicht befallen (R0)"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 24. Nächster tumorfreier RR (linkId 11490) ---
Instance: IntegratedClosestMargin
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
* specimen = Reference(IntegratedBETSlideRR-Superior-HE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept.text = "Posterior"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 25. Mindestabstand invasiv (linkId 11480) ---
Instance: IntegratedMinDistanceInvasive
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
* specimen = Reference(IntegratedBETSlideRR-Superior-HE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity = 5 'mm' "mm"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 26. RR-Status nichtinvasiv (linkId 11968) ---
Instance: IntegratedMarginStatusNonInvasive
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
* specimen = Reference(IntegratedBETSlideRR-Superior-HE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Nicht befallen"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 27. Mindestabstand nichtinvasiv (linkId 11970) ---
Instance: IntegratedMinDistanceNonInvasive
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
* specimen = Reference(IntegratedBETSlideRR-Superior-HE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity = 3 'mm' "mm"
* derivedFrom = Reference(IntegratedQRBreastResection)

// ============================================================================
// BET FINDINGS — WEITERE (2 Observations)
// ============================================================================

// --- 28. LVI (linkId 11430) ---
Instance: IntegratedLVI
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Nicht nachgewiesen"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 29. Mikrokalzifikationen (linkId 10880) ---
Instance: IntegratedMicrocalcification
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $loinc#LA27826-9 "Microcalcifications present in DCIS"
* derivedFrom = Reference(IntegratedQRBreastResection)

// ============================================================================
// BET FINDINGS — BIOMARKER (10 Observations)
// ============================================================================

// --- 30. ER-Status (linkId 11750) ---
Instance: IntegratedERStatus
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
* specimen = Reference(IntegratedBETSlideER01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "Positiv"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3467 "ESR1"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 31. ER Prozent (linkId 11720) ---
Instance: IntegratedERPercentage
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
* specimen = Reference(IntegratedBETSlideER01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity.value = 90
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3467 "ESR1"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 32. ER Färbeintensität (linkId 11730) ---
Instance: IntegratedERIntensity
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
* specimen = Reference(IntegratedBETSlideER01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#24484000 "Severe (severity modifier) (qualifier value)"
* valueCodeableConcept.text = "Stark"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3467 "ESR1"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 33. PR-Status (linkId 11790) ---
Instance: IntegratedPRStatus
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
* specimen = Reference(IntegratedBETSlidePR01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* valueCodeableConcept.text = "Positiv"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:8910 "PGR"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 34. PR Prozent (linkId 11760) ---
Instance: IntegratedPRPercentage
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
* specimen = Reference(IntegratedBETSlidePR01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity.value = 60
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:8910 "PGR"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 35. PR Färbeintensität (linkId 11770) ---
Instance: IntegratedPRIntensity
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
* specimen = Reference(IntegratedBETSlidePR01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#6736007 "Moderate (severity modifier) (qualifier value)"
* valueCodeableConcept.text = "Mäßig"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:8910 "PGR"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 36. HER2-Score (IHC) (linkId 11810) ---
Instance: IntegratedHER2IHC
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
* specimen = Reference(IntegratedBETSlideHER2IHC01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept.text = "1+"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3430 "ERBB2"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 37. HER2-Amplifikation (ISH) (linkId 11820) ---
Instance: IntegratedHER2ISH
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
* specimen = Reference(IntegratedBETSlideHER2IHC01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Nicht amplifiziert"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3430 "ERBB2"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 38. HER2-Gesamtstatus (linkId 11830) ---
Instance: IntegratedHER2Overall
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
* specimen = Reference(IntegratedBETSlideHER2IHC01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Negativ"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:3430 "ERBB2"
* derivedFrom = Reference(IntegratedQRBreastResection)

// --- 39. Ki-67-Index (linkId 11840) ---
Instance: IntegratedKi67
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
* specimen = Reference(IntegratedBETSlideKi67-01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity.value = 15
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $hgnc#HGNC:7107 "MKI67"
* derivedFrom = Reference(IntegratedQRBreastResection)

// ============================================================================
// BET FINDINGS — TNM (1 Observation)
// ============================================================================

// --- 40. pT-Kategorie (linkId 169) ---
Instance: IntegratedPT
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
* specimen = Reference(IntegratedBETSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#1352559008 "Union for International Cancer Control pT1 (qualifier value)"
* valueCodeableConcept.text = "pT1"
* derivedFrom = Reference(IntegratedQRBreastResection)

// ============================================================================
// BET FINDINGS — KOMMENTAR (1 Observation)
// ============================================================================

// --- 41. Kommentar BET (linkId 11900) ---
Instance: IntegratedBETComment
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
* basedOn = Reference(IntegratedReportRequest)
* valueString = "Korrelation mit dem Vorbefund der Stanzbiopsie (E_25_105): Übereinstimmende Histologie (invasives Mammakarzinom NST, G2). Biomarkerprofil bestätigt: ER+, PR+, HER2-, Luminal-A-like. Empfehlung: Tumorkonferenz zur weiteren Therapieplanung."
* derivedFrom = Reference(IntegratedQRBreastResection)


// ============================================================================
// SLN FINDINGS — LK-BEFUNDE (15 Observations)
// ============================================================================

// --- 1. LK OP Prozedur (linkId 11540) ---
Instance: IntegratedLymphNodeProcedure
InstanceOf: $mii-patho-finding
Usage: #example
Title: "LK OP Prozedur - SLN"
Description: "Art der Lymphknoten-Operation: Sentinel-Lymphknoten-Biopsie"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21877-6 "Surgery procedure for regional nodes at facility.YYY Cancer"
* code.text = "LK OP Prozedur"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#396487001 "Sentinel lymph node biopsy (procedure)"
* valueCodeableConcept.text = "Sentinel-Lymphknoten-Biopsie"
* derivedFrom = Reference(IntegratedQRLymphNode)

// --- 2. Seitenangabe (linkId 11620) ---
Instance: IntegratedLymphNodeLaterality
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seitenangabe - SLN"
Description: "Seitenlokalisation: Links"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#20228-3 "Anatomic part Laterality"
* code.text = "Seitenangabe"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#7771000 "Left (qualifier value)"
* valueCodeableConcept.text = "Links"
* derivedFrom = Reference(IntegratedQRLymphNode)

// --- 3. Anzahl untersuchter Non-SLN (linkId 11630) ---
Instance: IntegratedNonSLNExamined
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl untersuchter Non-SLN"
Description: "Anzahl der untersuchten (nicht-Sentinel) axillären Lymphknoten: 0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21894-1 "Regional lymph nodes examined [#] Specimen"
* code.text = "Anzahl untersuchter Non-SLN-axillärer LK"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity.value = 0
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(IntegratedQRLymphNode)

// --- 4. Anzahl befallener Non-SLN (linkId 11640) ---
Instance: IntegratedNonSLNPositive
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl befallener Non-SLN"
Description: "Anzahl der befallenen (nicht-Sentinel) axillären Lymphknoten: 0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21893-3 "Regional lymph nodes positive [#] Specimen"
* code.text = "Anzahl befallener Non-SLN-axillärer LK"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity.value = 0
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(IntegratedQRLymphNode)

// --- 5. Anzahl untersuchter SLN (linkId 11650) ---
Instance: IntegratedSLNExamined
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl untersuchter SLN"
Description: "Anzahl der untersuchten Sentinel-Lymphknoten: 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85347-3 "Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy"
* code.text = "Anzahl untersuchter Sentinel-LK"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity.value = 2
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(IntegratedQRLymphNode)

// --- 6. Anzahl befallener SLN (linkId 11660) ---
Instance: IntegratedSLNPositive
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Anzahl befallener SLN"
Description: "Anzahl der befallenen Sentinel-Lymphknoten: 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#1264491009 "Number of sentinel lymph nodes containing metastatic neoplasm in excised specimen (observable entity)"
* code.text = "Anzahl befallener Sentinel-LK"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity.value = 1
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(IntegratedQRLymphNode)

// --- 7. Gesamtzahl untersuchter LK (linkId 11944) ---
Instance: IntegratedTotalExamined
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Gesamtzahl untersuchter LK"
Description: "Gesamtzahl untersuchter Lymphknoten: 2"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#92833-3 "Lymph nodes examined [#] in Cancer specimen by Light microscopy"
* code.text = "Gesamtzahl untersuchter Lymphknoten"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity.value = 2
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(IntegratedQRLymphNode)

// --- 8. Gesamtzahl befallener LK (linkId 11945) ---
Instance: IntegratedTotalPositive
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Gesamtzahl befallener LK"
Description: "Gesamtzahl befallener Lymphknoten: 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#92831-7 "Lymph nodes with metastasis [#] in Cancer specimen"
* code.text = "Gesamtzahl befallener Lymphknoten"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity.value = 1
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(IntegratedQRLymphNode)

// --- 9. Makrometastatisch befallene LK (linkId 11947) ---
Instance: IntegratedMacroMetCount
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Makrometastatisch befallene LK"
Description: "Gesamtzahl makrometastatisch befallener Lymphknoten: 0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85343-2 "Lymph nodes with macrometastases [#] in Cancer specimen by Light microscopy"
* code.text = "Gesamtzahl makrometastatisch befallener LK"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity.value = 0
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(IntegratedQRLymphNode)

// --- 10. Mikrometastatisch befallene LK (linkId 11948) ---
Instance: IntegratedMicroMetCount
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Mikrometastatisch befallene LK"
Description: "Gesamtzahl mikrometastatisch befallener Lymphknoten: 1"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85344-0 "Lymph nodes with micrometastases [#] in Cancer specimen by Light microscopy"
* code.text = "Gesamtzahl mikrometastatisch befallener LK"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity.value = 1
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(IntegratedQRLymphNode)

// --- 11. ITC-befallene LK (linkId 11946) ---
Instance: IntegratedITCCount
InstanceOf: $mii-patho-finding
Usage: #example
Title: "ITC-befallene LK"
Description: "Gesamtzahl ausschließlich ITC-befallener Lymphknoten: 0"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85352-3 "Lymph nodes with isolated tumor cells [#] in Cancer specimen by Light microscopy"
* code.text = "Gesamtzahl ausschließlich ITC-befallener LK"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenPart)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity.value = 0
* valueQuantity.unit = "{count}"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{count}
* derivedFrom = Reference(IntegratedQRLymphNode)

// --- 12. Größte Metastasenausdehnung (linkId 11690) ---
Instance: IntegratedLargestMetSize
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Größte Metastasenausdehnung"
Description: "Ausdehnung der größten metastatischen Infiltration: 1.2 mm"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85351-5 "Lymph node metastatic deposit.max dimension [Length] in Cancer specimen by Light microscopy"
* code.text = "Ausdehnung der größten metastatischen Infiltration"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueQuantity = 1.2 'mm' "mm"
* derivedFrom = Reference(IntegratedQRLymphNode)

// --- 13. Extranodale Infiltration (linkId 11700) ---
Instance: IntegratedExtranodalExtension
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Extranodale Infiltration"
Description: "Extranodale Infiltration durch LK-Metastase: Nicht vorhanden"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#85350-7 "Extranodal extension of carcinoma [Presence] in Cancer specimen by Light microscopy"
* code.text = "Extranodale Infiltration durch LK-Metastase"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Nicht vorhanden"
* derivedFrom = Reference(IntegratedQRLymphNode)

// --- 14. pN-Kategorie (linkId 175) ---
Instance: IntegratedPN
InstanceOf: $mii-tnm-n
Usage: #example
Title: "pN-Kategorie - SLN"
Description: "Pathologische N-Kategorie: pN1mi(sn)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie|2026.0.0"
* status = #final
* code.coding[0] = $loinc#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* code.coding[+] = $sct#371494008 "pN category (observable entity)"
* code.text = "Regionäre Lymphknoten (pN-Kategorie)"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSlideHE01)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-n-kategorie-werte"
* valueCodeableConcept.coding.code = #pN1mi(sn)
* valueCodeableConcept.text = "pN1mi(sn)"
* derivedFrom = Reference(IntegratedQRLymphNode)

// --- 15. Kommentar SLN ---
Instance: IntegratedSLNComment
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Kommentar - SLN"
Description: "Kommentar zum SLN-Befund"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#22638-1 "Pathology report comments [Interpretation] Narrative"
* code.text = "Kommentar"
* subject = Reference(Patient4)
* effectiveDateTime = "2025-02-10"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)
* valueString = "In SLN #1 Nachweis einer Mikrometastase (1,2 mm) im Randsinus. SLN #2 tumorfrei in allen Schnittstufen. Keine extranodale Infiltration. Klassifikation: pN1mi(sn). Empfehlung: Besprechung in Tumorkonferenz bzgl. weiterer axillärer Therapie."
* derivedFrom = Reference(IntegratedQRLymphNode)
