// ============================================================================
// INTRAOPERATIVE BEURTEILUNG (SCHNELLSCHNITT) - INTEGRIERTER BERICHT
// ============================================================================
// Der Schnellschnitt der beiden Sentinel-Lymphknoten ist ein eigener
// Beobachtungsberichtsabschnitt (LOINC 83321-0) und damit weder Teil der
// Makroskopie noch der Mikroskopie. Er trug intraoperativ die Entscheidung
// gegen eine Axilladissektion; die Mikrometastase in SLN #1 wurde erst in den
// Paraffinschnittstufen nachgewiesen.
//
// Die Zuordnung der Einzelbefunde zu den beiden Lymphknoten erfolgt - wie von
// MII vorgesehen - über Observation.specimen (hier auf Blockebene, da je SLN
// genau ein Paraffinblock existiert).
// ============================================================================

Instance: IntegratedIntraoperativeGrouper
InstanceOf: MII_PR_Patho_Intraoperative_Grouper
Usage: #example
Title: "Intraoperative Befunde Grouper (integriert)"
Description: "Gruppierung der Schnellschnittbefunde beider Sentinel-Lymphknoten"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-intraoperative-grouper|2027.0.0-ballot"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#83321-0
* subject = Reference(Patient4)
* effectiveDateTime = "2025-02-05T11:15:00+01:00"
* performer = Reference(PathologistPractitioner)
* basedOn = Reference(IntegratedReportRequest)

* hasMember[+] = Reference(IntegratedIntraoperativeSLN1)
* hasMember[+] = Reference(IntegratedIntraoperativeSLN2)

// =============================================================================
// SLN #1 - Schnellschnitt
// =============================================================================

Instance: IntegratedIntraoperativeSLN1
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Schnellschnitt SLN #1 (integriert)"
Description: "Sentinel-Lymphknoten #1 im Schnellschnitt tumorfrei"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#83321-0
* code = $sct#1268302004 "Presence of metastatic neoplasm in lymph node in excised tissue specimen (observable entity)"
* code.text = "Metastasennachweis im Schnellschnitt"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenBlock01)
* effectiveDateTime = "2025-02-05T11:15:00+01:00"
* performer = Reference(PathologistPractitioner)
* method = $sct#817011007 "Tissue frozen section technique (procedure)"
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Tumorfrei im Schnellschnitt"
* bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"

// =============================================================================
// SLN #2 - Schnellschnitt
// =============================================================================

Instance: IntegratedIntraoperativeSLN2
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Schnellschnitt SLN #2 (integriert)"
Description: "Sentinel-Lymphknoten #2 im Schnellschnitt tumorfrei"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#83321-0
* code = $sct#1268302004 "Presence of metastatic neoplasm in lymph node in excised tissue specimen (observable entity)"
* code.text = "Metastasennachweis im Schnellschnitt"
* subject = Reference(Patient4)
* specimen = Reference(IntegratedSLNSpecimenBlock02)
* effectiveDateTime = "2025-02-05T11:15:00+01:00"
* performer = Reference(PathologistPractitioner)
* method = $sct#817011007 "Tissue frozen section technique (procedure)"
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* valueCodeableConcept.text = "Tumorfrei im Schnellschnitt"
* bodySite = $sct#68171009 "Axillary lymph node structure (body structure)"
