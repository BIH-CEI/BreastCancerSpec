# Migration auf MII Patho 2027.0.0 — Analyse der anstehenden Anpassungen

**Stand der Analyse:** 2026-08-05, aktualisiert 2026-10-12 auf den Ballot (Abschnitt 0), Umsetzungsstand 2026-11-02
**Quelle:** [`medizininformatik-initiative/kerndatensatzmodul-PathologieBefund`, Branch `dev/v2027`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-PathologieBefund/tree/dev/v2027), HEAD `cdb0668` (2026-08-05); seit 2026-09-14 Tag `v2027.0.0-ballot`
**Aktuelle Abhängigkeit dieses IG:** `de.medizininformatikinitiative.kerndatensatz.patho: 2027.0.0-ballot` (base/biobank `2027.0.0-ballot`, onkologie `2027.0.0-ballot.1`)

## 0. Update 2026-10-12: Ballot `2027.0.0-ballot`

Am 2026-09-14 wurde `v2027.0.0-ballot` veröffentlicht (GitHub-Pre-Release, Package auf packages.fhir.org auflösbar). Vergleich `cdb0668...v2027.0.0-ballot` (25 Commits): **keine strukturellen Profiländerungen**. Geändert haben sich nur

- Versionsstring `2027.0.0` → `2027.0.0-ballot`,
- SNOMED-Displays von FSN auf Preferred Term (z. B. „Left" statt „Left (qualifier value)") — relevant, wo das Profil Codes per Pattern fixiert: `ServiceRequest.category` 726007 musste angepasst werden,
- Beispiel-IDs (`Patient/12345` → `mii-exa-patho-patient-12345`), Doku-Texte, ignoreWarnings.

Da bisher keine Ballot-Kommentare eingereicht wurden, ist bis zum finalen Release wenig Änderung zu erwarten. Die Analyse unten gilt daher unverändert.

**Umgesetzt (2026-10-12):**

- Dependencies: patho/base/biobank `2027.0.0-ballot`, onkologie `2027.0.0-ballot.1` (TNM-Profile identisch zu `-ballot`), neu `hl7.fhir.uv.xver-r5.r4: 0.1.0`, entfernt `hl7.fhir.us.mcode`. Alle `meta.profile`-Versionen entsprechend.
- Punkt 2/3 (BodyStructure, Issue #42): BodyStructures `BreastResectionBodyStructure`, `IntegratedBETBodyStructure`, `CoreNeedleBiopsyBodyStructure` nach Vorlage `mii-exa-patho-left-breast-body-structure` (location, laterality, Mamille, 5 Uhr, distal, 50 mm), referenziert über `Specimen.collection.bodySite.extension[bodyStructure]`. Stanze ohne `morphology` (Befund zum Entnahmezeitpunkt nicht gesichert). SLN ohne BodyStructure (Seite in 739020002 präkoordiniert, keine Landmarke). mCODE-`lateralityQualifier` entfernt; Observations `*MacroClock`/`*MacroDistanceNipple` samt Grouper-, Bundle- und supportingInfo-Referenzen entfernt.
- Punkt 6 (Specimen.feature): Drahtmarkierung, Fadenmarkierung lang anterior, 2x kurz distal an BET- und integriertem BET-Part, Narrativ/`note.text` ergänzt.

**Onko-Ballot — Nebenwirkung auf TNM:** `value.coding` ist jetzt geslict in `uicc` (1..1, required `mii-vs-onko-tnm-*-kategorie-werte`) und `snomed-ct` (0..1, required auf SCT-Hierarchien); neu sind die Extensions `mii-ex-onko-tnm-sn-suffix` und `mii-ex-onko-tnm-itc-suffix` an `value`. Unsere TNM-Instanzen wurden auf die Slice-Namen umgestellt (Werte unverändert). SCT 1356762006 „pN1mi(sn)" liegt im neuen SCT-ValueSet — das pN-Dual-Coding ist damit profilseitig vorgesehen.

**IG-Publisher-Lauf 2026-10-12** (1310 Fehler): Der weit überwiegende Teil sind tx.fhir.org-Ausfälle (`The cache … was never issued by this server`, `SocketTimeoutException`) — betroffen u. a. `category:section-type` (130×), Biobank-BodyStructure-ValueSet, ICD-10-GM. Profile sind dort gegenüber 2026 unverändert; vor einer Bewertung neu bauen. Für die neuen BodyStructures und `Specimen.feature` gibt es **keine inhaltlichen Fehler**. Echte, offene Befunde:

- `LymphNodePN`: neue Onko-Invariante `tnm-sct-uicc-konsistenz` — das SNOMED-Display muss `<Präfix><UICC-Code> ` enthalten (hier `pN1mi `). SCT 1356762006 „pN1mi(sn)" passt nicht zu UICC `N1mi`; **Umgesetzt 2026-10-12:** `(sn)` über `mii-ex-onko-tnm-sn-suffix`, UICC `N1mi`, SCT 1352620005 „pN1mi (UICC)" (gleicher Elternbegriff 1352604000, im MII-Ontoserver bestätigt) statt 1356762006.
- `IntegratedPN`: UICC-Code `N1mi(sn)` existiert nicht im required ValueSet (bestand schon vorher; `LymphNodePN` nutzt korrekt `N1mi`). **Umgesetzt 2026-10-12** wie `LymphNodePN` (UICC `N1mi` + sn-Suffix + SCT 1352620005).
- Vorbestehend/unabhängig: `CoreNeedleBiopsyHER2Overall` SCT 1363314005 unbekannt in der vom tx genutzten SCT-Edition 20250201; Broken Link auf `mii-pr-patho-report` in `index.md`; `hl7.fhir.uv.subscriptions-backport.r4#1.1.0` (transitiv via ISiK) ist FHIR 4.0.0.

**IG Publisher 3.0.0 (2026-10-12, 57 Fehler, keine tx-Ausfälle mehr)** — behoben:
- Falsche Displays (in 3.0 Fehler statt Warnung): LOINC 22634-0, 22637-3, 48676-1, 85319-2, SCT 1237281001.
- Überschriften-Hierarchie in Section-Narrativen (`h4` direkt nach dem Section-Titel → `h3`); Viewer-CSS stellt `h3` innerhalb eines Abschnitts weiter als Zwischenüberschrift dar.
- TNM (pT/pN) aus `DiagnosticConclusionGrouper.hasMember` entfernt: `hasMember` ist per `type`-Discriminator auf `resolve()` geslict, dadurch wird jedes Observation-Mitglied gegen `mii-pr-patho-finding` geprüft, das die Onko-TNM-Profile nicht erfüllen (Pflicht-Kategorien `laboratory`/`section-type`). Auch 2026 schon so, Publisher 2.2.7 meldete es nicht. TNM steht im Text von `DiagnosticReport.conclusion`; die TNM-Observations bleiben im Bundle. Mögliches Ballot-Feedback an die MII.
- Offen/Fehlalarm: SCT 1363314005 (HER2-ISH) gültig in SNOMED International 20260701 (MII-Ontoserver), tx.fhir.org prüft gegen 20250201.

**Semantic Annotations (2026-10-13), Seite `input/pagecontent/semantic-annotations.md`** — neu im Menü (nach „Motivation"), Umfang an ProstateCancerSpec angeglichen; alle neuen Codes gegen den MII-Ontoserver (SNOMED International 20260701, ICD-O-3 2019 dt.) bzw. LOINC-AnswerLists über tx.fhir.org geprüft:
- Korrigiert: Makroskopie (entfernte Zifferblatt-/Mamillenabstand-Observations raus, SLN-Zählungen 85347-3/92833-3 ergänzt), HER2-Displays, TNM-Hinweis (nicht in `hasMember`, sondern in `DiagnosticReport.conclusion`), pN-sn-Suffix, DCIS-Displays.
- Neu: Abschnitt „Specimen Localisation" (BodyStructure + `Specimen.feature`), ICD-O-3-Tabellen nach WHO 2019 (21 Entitäten mit SCT-Morphologie), vervollständigte ValueSets (HER2 IHC/ISH, Färbeintensität, DCIS-Nekrose, EIC, Rand-Lokalisation, Fokalität, mitentfernte Strukturen, Präparattyp, Eingriffe, Positiv/Negativ).
- Instanzen dabei angeglichen: `IntegratedHER2Overall` → LOINC LA6577-6 „Negative", `IntegratedHER2ISH` → SCT 705105000 (wie BET); ICD-O-3 8500/3 mit BfArM-Display „Invasives duktales Karzinom o.n.A." (Text „(NST)" bleibt im integrierten Bericht); Display SCT 836381000000102 korrigiert.

**Review Semantic Annotations (2026-11-02)** — alle 232 Code-Angaben der Seite gegen den MII-Ontoserver geprüft (existent; inaktiv nur die drei ausdrücklich als inaktiv genannten), LOINC-AnswerLists gegen tx.fhir.org, Seite gegen alle generierten Instanzen abgeglichen:
- Seite: 42 gekürzte/freie Displays in den Observation-Tabellen durch die offiziellen ersetzt (wie ProstateCancerSpec); u. a. falsch: 29638-4 „Specimen weight" → „Weight of Tissue", 85318-4 „by ISH" → „by FISH". Ergänzt: `Specimen.collection.bodySite` 33564002 in der Lokalisationstabelle, B-Klassifikation der Stanze als supportingInfo in BET/INT, korrekte Zuordnung der LOINC-AnswerLists. Korrigiert: Aussage „keine soliden/papillären Muster in SNOMED" (369757002/369756006 existieren als Tumor configuration), Hinweis zum histologischen Typ (auch CNB `59847-4` mit SCT kodiert).
- Instanzen (Entscheidung User): integrierter Bericht an BET-Kodierung angeglichen — ER/PR-Status LA6576-8, assoziiertes DCIS LA27260-1, DCIS-Kerngrad 369782002, DCIS-Nekrosen LA27235-3, HER2-IHC LA11841-6, nächster Rand 255551008, Materialart 309546004, Tumorausdehnung 372288004. DCIS-Nekrosen überall „zentrale Komedo-Nekrosen" (vorher widersprüchlich fokal/zentral in Fragebögen, Conclusion, Narrativ). SLN-Part im integrierten Bericht: bodySite 739020002 (wie SLN-Bericht) statt 68171009.
- Bewusst offen (auf der Seite dokumentiert): histologischer Typ BET/CNB SCT vs. INT ICD-O-3; Fokalität nur Text.

**QA-Stand (letzter Publisher-Lauf 2026-10-13, Publisher 3.0.0):** 14 Fehler, 1372 Warnungen, 1 Broken Link.
- 12× SCT 1363314005 inkl. Folgefehler (Fehlalarm tx.fhir.org, s. o.),
- `hl7.fhir.uv.subscriptions-backport.r4` ist FHIR 4.0.0,
- `dependsOn`-URL des Patho-Packages nicht auflösbar (Package enthält keine IG-Ressource),
- Broken Link `mii-pr-patho-report` in `index.md`.
- Warnungen: TNM-Observations sind aus der Composition nicht erreichbar (Folge der `hasMember`-Entscheidung).

**Offene Punkte (Entscheidung ausstehend):**
- `IntegratedPN.code` ist 371494008 „pN category", `LymphNodePN.code` 277206009 „N category" (#40) — angleichen?
- pT-Wert UICC `T1` vs. Text „pT1c".
- `DiagnosticReport.conclusionCode` für TNM nicht befüllt (TNM bisher nur im Text von `conclusion`).
- B-Klassifikation: nur B5b kodiert, für B1–B5a keine passenden SNOMED-Codes gefunden.
- Histologischer Typ: BET mit SNOMED, integrierter Bericht mit ICD-O-3 kodiert.

**Werkzeug:** Terminologieprüfungen gegen den MII-Ontoserver laufen über den MCP-Server `terminology-proxy-mcp`; seit 2026-11-02 mit persönlichem Client-Zertifikat (das gemeinsame Tester-Zertifikat ist am 2026-10-28 abgelaufen).

## 1. Release-Status

Version 2027.0.0 ist **noch nicht veröffentlicht** — es existiert kein Tag und kein GitHub-Release, nur der Branch `dev/v2027` (16 Commits vor `v2026.0.0`, 300 geänderte Dateien). Eine `publication-request.json` mit `"version": "2027.0.0"`, `"mode": "milestone"`, `"status": "release"` liegt bereits im Branch, ein Merge nach `main` ist aber noch nicht erfolgt. Letzte inhaltliche Commits: 2026-07-27 (Kernänderungen) und 2026-08-05 (Release Notes).

Bis zur Veröffentlichung des FHIR-Packages `de.medizininformatikinitiative.kerndatensatz.patho@2027.0.0` können die Änderungen hier nur **vorbereitet**, nicht validiert werden — der IG Publisher kann das Package noch nicht auflösen.

## 2. Changelog 2027.0.0 (Original)

Aus `input/pagecontent/changes.md` des Branches:

| Typ | Änderung | Issue |
|---|---|---|
| `feature` | `Specimen.collection.bodySite`: R5-BodyStructure-Extension (**mCode entfällt**) inkl. Prostatektomie- und **Mamma-Beispiel** | #259 |
| `feature` | EU-Lab-Angleichung: DiagnosticReport↔Composition-Extensions und optionale Composition-Section-Slices | #262, #263 |
| `feature` | `DiagnosticReport.code`: neues ValueSet `MII_VS_Patho_Report_Code_LOINC`, extensible Binding | #166 |
| `changed` | `Composition.event` korrigiert | #258 |
| `changed` | IG wird ab dieser Version mit dem **HL7 IG Publisher** erstellt (zuvor Simplifier) | — |
| `fix` | CapabilityStatement-URL, fehlende Substances in Specimen-Beispielen | — |
| `documentation` | RequestGroup-Profilseite entfernt (requisition-basierte Gruppierung genügt) | — |
| `documentation` | Untersuchungsauftrag/`requisition` als Auftragsgruppe/Fall, Specimen-Referenzierungslogik, `derivedFrom`-Hinweis für Grouper, SDC-Passus, Modulbeschreibung, Lebenszyklus-Tabellen, Suchparameter | #247–#257, #261 |

## 3. Detailanalyse der relevanten Neuerungen

### 3.1 R5-BodyStructure-Backport an `Specimen.collection.bodySite` (#259) — **hohe Relevanz**

**Profiländerung** (`input/fsh/specimen.fsh`):

```fsh
* bodySite.extension contains $r5-specimen-collection-bodysite named bodyStructure 0..1 MS
* bodySite.extension[bodyStructure].valueReference only Reference(BodyStructure)
```

mit

```fsh
Alias: $r5-specimen-collection-bodysite =
  http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.collection.bodySite
```

Begründung im Profil: R5 modelliert `Specimen.collection.bodySite` als `CodeableReference`. Die Cross-Version-Extension trägt den Reference-Anteil auf `BodyStructure`; **der kodierte Anteil bleibt in `bodySite` selbst**. Es ist also kein Entweder-oder — beides wird parallel gefüllt.

**Die mCode-Extensions werden ersatzlos entfernt.** Genau das betrifft unsere Umsetzung von Issue #48: In `IntegratedReport/specimens.fsh:35` und `BreastResection/specimens.fsh` verwenden wir aktuell

```fsh
* bodySite.extension[lateralityQualifier].url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier"
* bodySite.extension[lateralityQualifier].valueCodeableConcept = $sct#7771000 "Left (qualifier value)"
```

Das ist ab 2027 nicht mehr der vorgesehene Weg und muss auf die BodyStructure-Referenz umgestellt werden.

**Das mitgelieferte Mamma-Beispiel** (`mii-exa-patho-left-breast-body-structure`) ist praktisch deckungsgleich mit unserem BET-Fall — linke Mamma, unterer äußerer Quadrant, 5 Uhr, 50 mm distal der Mamille, Draht- und Fadenmarkierung, Patientin 34545:

```fsh
Instance: mii-exa-patho-left-breast-body-structure
InstanceOf: BodyStructure
* active = true
* patient = Reference(Patient/34545)
* morphology = $SCT#82711006 "Infiltrating duct carcinoma"
* location = $SCT#110502005 "Lower outer quadrant of left breast"
* locationQualifier[+] = $SCT#7771000 "Left (qualifier value)"
* description = "5 x 3 x 3 cm, eine Draht- und eine Fadenmarkierung"
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure"
  // structure, laterality, bodyLandmarkOrientation{landmarkDescription, clockFacePosition,
  //                                                surfaceOrientation, distanceFromLandmark}
```

Verknüpfung im Specimen:

```fsh
* collection.bodySite = $SCT#33564002 "Structure of lower outer quadrant of breast"
* collection.bodySite.extension[bodyStructure].valueReference =
    Reference(BodyStructure/mii-exa-patho-left-breast-body-structure)
```

**Das löst die offene Frage aus Issue #42.** Dort war unklar, wohin Zifferblattposition und Mamillenabstand gehören, weil `locationQualifier` nur CodeableConcepts aufnimmt. Über `includedStructure.bodyLandmarkOrientation` sind beide jetzt sauber abbildbar:

| Angabe | Ziel in BodyStructure | Beispielwert |
|---|---|---|
| Bezugspunkt | `bodyLandmarkOrientation.landmarkDescription` | SCT 24142002 „Nipple structure" |
| Zifferblatt | `bodyLandmarkOrientation.clockFacePosition` | SCT 260335000 „5 o'clock position" |
| Richtung | `bodyLandmarkOrientation.surfaceOrientation` | SCT 46053002 „Distal" |
| Mamillenabstand | `bodyLandmarkOrientation.distanceFromLandmark.value` | 50 mm (Quantity, UCUM) |
| Quadrant | `location` / `includedStructure.structure` | SCT 110502005 |
| Seite | `locationQualifier` / `includedStructure.laterality` | SCT 7771000 |

Damit können die Observations `Quadrant Breast`, `Radial position in breast [Angle]` und `Distance of primary malignant neoplasm to nipple` wie von @gharoske gefordert aus dem Makroskopie-Grouper verschwinden — ohne dass Information verloren geht.

**Zusätzlich im Mamma-Specimen-Beispiel:** die R5-Extension `extension-Specimen.feature` (`type` + `description`) für Präparatmarkierungen — Drahtmarkierung, Fadenmarkierung anterior, Fadenmarkierung distal. Das ist für unsere BET-Präparate direkt nachnutzbar; wir tragen diese Angaben derzeit nur als Freitext.

### 3.2 EU-Lab-Angleichung (#262, #263) — **hohe Relevanz für die Viewer-Issues**

**a) Gegenseitige Verknüpfung Composition ↔ DiagnosticReport**, beide optional (kein Breaking Change):

```fsh
// auf MII_PR_Patho_Report
* extension contains $r5-diagnosticreport-composition named composition 0..1 MS
    // http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition

// auf MII_PR_Patho_Composition
* extension contains $eu-composition-diagnosticreport named diagnosticReport 0..1 MS
    // http://hl7.eu/fhir/extensions/StructureDefinition/composition-diagnosticReportReference
```

**b) Optionale Composition-Section-Slices.** Bisher kannte die Composition nur eine Section (`patho-diagnostic-report`); die Beobachtungsabschnitte lagen ausschließlich in `DiagnosticReport.result`. Ab 2027 können sie **zusätzlich** direkt als Composition-Sections geführt werden, jede referenziert denselben Grouper wie `DiagnosticReport.result`:

```fsh
* section contains patho-diagnostic-report 1..* MS
    and makroskopie 0..1 MS
    and mikroskopie 0..1 MS
    and intraoperativ 0..1 MS
    and diagnostische-schlussfolgerung 0..1 MS
    and zusaetzliche-beobachtung 0..1 MS
```

| Slice | LOINC | `entry only Reference(...)` |
|---|---|---|
| `patho-diagnostic-report` | 60567-5 | `mii-pr-patho-report` |
| `makroskopie` | 22634-0 | `mii-pr-patho-macroscopic-grouper` |
| `mikroskopie` | 22635-7 | `mii-pr-patho-microscopic-grouper` |
| `intraoperativ` | 83321-0 | `mii-pr-patho-intraoperative-grouper` |
| `diagnostische-schlussfolgerung` | 22637-3 | `mii-pr-patho-diagnostic-conclusion-grouper` |
| `zusaetzliche-beobachtung` | 100969-5 | `mii-pr-patho-additional-specified-grouper` |

**Das ist der strukturelle Hebel für die offenen Viewer-Issues #50, #53 und #46.** Alle drei bemängeln fehlende oder abgeschnittene Makro-/Mikro-Abschnitte. Mit expliziten, LOINC-kodierten Composition-Sections samt eigenem `section.text`-Narrativ wird der Bericht dokumentenzentrisch renderbar, statt dass der Viewer den Umweg über `DiagnosticReport.result` gehen muss.

### 3.3 `DiagnosticReport.code`: neues ValueSet (#166) — geringe Relevanz

Neues ValueSet `mii-vs-patho-report-code-loinc` (extensible), Slicing-Diskriminator von `#pattern`/`$this` auf `#value`/`system` geändert, `system = $LOINC (exactly)`:

```
60568-3  Pathology Synoptic report
11526-1  Pathology study
11529-5  Surgical pathology study
33716-2  Non-gynecological cytology study
26435-8  Molecular pathology studies (set)
47528-5  Cytology report of Cervical or vaginal smear or scraping Cyto stain
47527-7  Cytology report of Cervical or vaginal smear or scraping Cyto stain.thin prep
18743-5  Autopsy report
```

Alle vier unserer DiagnosticReports nutzen `$loinc#60568-3 "Pathology Synoptic report"` — im ValueSet enthalten, **kein Anpassungsbedarf**.

### 3.4 RequestGroup entfernt — kein Anpassungsbedarf

Die RequestGroup-Profilseite wurde gestrichen; für den Regelfall (mehrere unabhängige Untersuchungen auf eine Einsendung/Accession) genügt die Gruppierung über `ServiceRequest.requisition` als Placer Order Group. Unser IG verwendet weder `RequestGroup` noch `requisition` — Letzteres wäre für die integrierten BET+SLN-Aufträge allerdings die naheliegende Modellierung und ist einen eigenen Gedanken wert.

### 3.5 IG-Publisher-Migration — indirekt relevant

Das MII-Modul wechselt von Simplifier auf den HL7 IG Publisher (wie unser IG ihn bereits nutzt). Praktische Nebenwirkungen im Branch, die für uns lehrreich sind:

- `input/fsh/examples-external.fsh` — externe Hilfsinstanzen (Patient, Practitioner, Organization, Encounter) mussten ergänzt werden, weil sonst der Narrative-Renderer mit einer NPE in `DiagnosticReportRenderer.populateSubjectSummary` abbricht.
- `input/ignoreWarnings.txt`, `input/intro-notes/`, `translations/en/` kamen neu hinzu.
- Profilbeschreibungen wanderen ins FSH (DE + EN über Translation-Extension).

### 3.6 Nicht neu in 2027 (zur Klarstellung)

Bei der Prüfung gegen `v2026.0.0` bestätigt: `DiagnosticReport.result`-Slicing (closed, ordered, fünf Slices), `DiagnosticReport.extension[related-report]` (`workflow-relatedArtifact`) und die `ServiceRequest.supportingInfo`-Slices (`codedCondition`, `anamnesis`, `activeProblems`, `observations`) existieren bereits in 2026 unverändert.

## 4. Konkrete Anpassungen in diesem IG

| # | Anpassung | Dateien | Aufwand | Abhängig vom Release? |
|---|---|---|---|---|
| 1 | `sushi-config.yaml` Dependencies auf `2027.0.0`; `MetaProfile`-Ruleset auf `\|2027.0.0` | `sushi-config.yaml`, `input/fsh/rulesets.fsh` | S | **ja** |
| 2 | mCode-`lateralityQualifier` entfernen, BodyStructure-Instanzen anlegen und aus `bodySite.extension[bodyStructure]` referenzieren | `*/specimens.fsh`, neue `*/bodystructures.fsh` | M | **ja** (Extension-Definition kommt aus dem Package) |
| 3 | Zifferblatt / Mamillenabstand / Quadrant aus den Makroskopie-Groupern in die BodyStructure überführen (**Issue #42**) | `IntegratedReport/macroscopy.fsh`, `BreastResection/macroscopy.fsh`, zugehörige `bundle-document.fsh` | M | nein (vorbereitbar) |
| 4 | ~~Composition-Section-Slices für Makroskopie / Mikroskopie / Diagnostische Schlussfolgerung ergänzen (**Issues #50, #53, #46**)~~ — **erledigt**, siehe Abschnitt 7 | `*/composition.fsh`, `input/images/document-viewer.js` | L | nein (Sections sind optional, LOINC-Codes stehen fest) |
| 5 | Composition↔DiagnosticReport-Extensions setzen | `*/composition.fsh`, `*/diagnostic-report.fsh` | S | **ja** |
| 6 | Präparatmarkierungen (Draht, Fäden) über `extension-Specimen.feature` statt Freitext | `BreastResection/specimens.fsh`, `IntegratedReport/specimens.fsh` | M | nein (reine R5-Cross-Version-Extension) |
| 7 | `requisition` für die integrierten BET+SLN-Aufträge prüfen | `IntegratedReport/serviceRequest.fsh` | S | nein |

### Vor dem Release umsetzbar

Punkte 3, 4, 6 und 7 hängen nicht am Package: Sie nutzen entweder feststehende LOINC-Codes, R5-Cross-Version-Extensions (die als reine URLs gesetzt werden können) oder betreffen nur unsere eigenen Instanzen. Punkt 4 ist der größte Hebel, weil er drei offene Issues auf einmal adressiert.

### Erst nach dem Release

Punkte 1, 2 und 5 — sobald `de.medizininformatikinitiative.kerndatensatz.patho@2027.0.0` publiziert ist, sollten `npm run sushi` und ein voller IG-Publisher-Lauf sofort gegen die neue Version gefahren werden.

## 5. Nebenbefund: `Composition.section.code` war nicht profilkonform — behoben

Unabhängig von 2027 aufgefallen: Alle vier Compositions setzten

```fsh
* section.code = $loinc#11526-1 "Pathology study"
```

Das MII-Profil verlangt für den Slice `section[patho-diagnostic-report]` aber `coding = $LOINC#60567-5` — bereits in 2026.0.0, unverändert in 2027. Da der Slicing-Diskriminator auf `code.coding` liegt, griff unsere Section den Pflicht-Slice (`1..*`) nicht. SUSHI meldet das nicht. Korrigiert im Zuge der Section-Umstellung (Abschnitt 7).

## 6. Beobachtung am Rande

Der Branch enthält zwei interne Arbeitsdokumente, die uns betreffen:

- `docs/COW-IG-Analyse.md` — Analyse des HL7 Clinical Order Workflows IG und IHE PaLM mit konkreten Sendeszenarien (Happy Path, Probenabweisung, Reflex-/Nachforderung) und Task-Statusmodell. Deckt sich mit den hier geplanten Workflow-Szenarien; die dort tabellierten Task-Status-Übergänge sind direkt nachnutzbar.
- `docs/Publikationsplan-Patho.md` — Publikationsplan für *Scientific Data* (Data Descriptor), Einreichung bis Ende 2026, Angle „internationale Konvergenz". Der **Prostate Cancer Spec IG** ist dort als Referenzimplementierung gesetzt; unser IG wird nicht genannt.

## 7. Umgesetzt: Composition-Sections und Befund-Viewer (Issues #50, #53, #46)

### Ursache der Viewer-Fehler

Der Renderer (`input/images/document-viewer.js`) suchte im Narrativ der einen Composition-Section nach **fünf fest verdrahteten `<h3>`-Überschriften** (`klinische_angaben`, `material`, `makroskopie`, `mikroskopie`, `diagnostische_schlussfolgerung`). Alles, was anders hieß, wurde stillschweigend verworfen:

- **#50 (BET):** Überschrift war `Diagnose` statt `Diagnostische Schlussfolgerung` → Diagnose-Tabelle, Resektionsränder, Biomarker, Weitere Befunde und Kommentar fielen weg. Die Überschrift selbst wurde trotzdem gedruckt, weil der Grouper 22637-3 im Bundle lag — daher der Eindruck eines abgeschnittenen Befundes.
- **#53 (Integriert):** Überschriften hießen `Makroskopie Mamma`, `Makroskopie Axilla`, `Mikroskopie Mamma`, `Mikroskopie Axilla`, `Schnellschnitt` — keine matchte, alle fünf verschwanden.

### Neue Struktur der Compositions

Statt einer Sammel-Section führen alle vier Szenarien jetzt echte, LOINC-kodierte Sections mit `entry` auf den jeweiligen Grouper:

| Section | LOINC | entry | in Szenarien |
|---|---|---|---|
| Pathologiebefundbericht | 60567-5 | DiagnosticReport | alle vier |
| Makroskopische Beurteilung | 22634-0 | Macroscopic Grouper | alle vier |
| Intraoperative Beurteilung | 83321-0 | Intraoperative Grouper | Integriert |
| Diagnostische Schlussfolgerung | 22637-3 | Diagnostic Conclusion Grouper | alle vier |

Klinische Angaben, Material und die mikroskopische Beurteilung bleiben im Narrativ der Berichts-Section: Für sie existiert kein Grouper, jede Section braucht aber eine `entry`-Referenz. **Ein Microscopic Grouper (22635-7) wurde bewusst nicht angelegt** — die mikroskopisch-deskriptiven Befunde liegen im Diagnostic Conclusion Grouper, dessen `hasMember`-Liste in #43/#44 abgestimmt wurde und nicht ohne Rücksprache umgebaut werden sollte.

### Materialien A und B im integrierten Bericht

MII sieht pro Berichtsabschnitt genau einen Grouper vor, auch bei mehreren Eingangspräparaten; die Zuordnung erfolgt über `Observation.specimen` (siehe Abschnitt 3.6-Zitat unten). Der integrierte Bericht behält daher **einen** Makroskopie-Grouper, und A (BET) / B (SLN) erscheinen als `<h4>`-Zwischenüberschriften im Narrativ — analog zum MII-Prostata-Beispiel (`Probe A: …`).

> „Falls ein Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, erfolgt die Zuordnung der MII PR Patho Befunde zu diesen verschiedenen Proben über die Probenreferenzen dieser MII PR Patho Befunde, und zwar hinsichtlich der Referenzen die „Parts" betreffend."
> — MII PR Patho Section Grouper, `dev/v2027`

### Neu: Intraoperativ-Grouper

`input/fsh/examples/IntegratedReport/intraoperative.fsh` — der Schnellschnitt war bislang nur Narrativtext. Jetzt: `IntegratedIntraoperativeGrouper` (LOINC 83321-0) mit zwei Findings, je Sentinel-Lymphknoten:

- `code` = SCT 1268302004 „Presence of metastatic neoplasm in lymph node in excised tissue specimen"
- `value` = SCT 2667000 „Absent"
- `method` = SCT 817011007 „Tissue frozen section technique"
- `specimen` = der jeweilige Paraffinblock (SLN #1 / SLN #2)

Eingehängt als `DiagnosticReport.result[intraoperative-observations]`. **Achtung:** `result` ist geordnet geslict (intraoperativ → makroskopisch → mikroskopisch → zusätzlich → Schlussfolgerung); die Reihenfolge im FSH muss das einhalten.

### Neuer Viewer

Der Renderer arbeitet jetzt codegesteuert statt über Überschriftentexte:

1. Sections mit bekanntem Grouper-Code werden am Stück unter fester Überschrift ausgegeben.
2. Sections ohne bekannten Code (Berichts-Section 60567-5, aber auch Alt-Bundles mit 11526-1) werden am `<h3>` zerlegt und über eine Überschriften-Tabelle einsortiert; die Altbezeichnungen `Makroskopie`, `Mikroskopie`, `Diagnose`, `Schnellschnitt` sind darin enthalten.
3. **Nichts wird verworfen.** Unbekannte Codes und unbekannte Überschriften landen am Ende statt im Nichts — das war die eigentliche Ursache von #50 und #53.
4. Die Ausgabereihenfolge folgt dem `result`-Slicing des MII-Moduls.

Gegengeprüft gegen alle vier generierten Bundles sowie gegen ein synthetisches Alt-Bundle mit unbekannter Überschrift.

### Weitere Korrekturen

- `BreastResectionComposition.title` enthielt „- Makroskopische Beurteilung (BET)" (#50) → jetzt „Histopathologischer Befundbericht - BET Mamma links", Schema wie in den übrigen drei Szenarien.
- Abschnittsüberschriften heißen durchgängig „Makroskopische Beurteilung" / „Mikroskopische Beurteilung" (#50).
- Klinische Angaben des integrierten Berichts auf den in #46 vorgegebenen Wortlaut gebracht.
- Im SLN-Narrativ stand „1,3 mm große metastatische Absiedlung", während Tabelle, `LymphNodeLargestMetSize` (1.2 mm) und der integrierte Bericht 1,2 mm führen → auf 1,2 mm vereinheitlicht.
