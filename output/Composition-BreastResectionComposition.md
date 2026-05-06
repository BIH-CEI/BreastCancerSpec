# BET Mamma Pathology Report Composition - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BET Mamma Pathology Report Composition**

## Example Composition: BET Mamma Pathology Report Composition

**identifier**: Accession ID/PATH-COMP-2025-210

**status**: Final

**type**: Pathology report (record artifact)

**encounter**: [Encounter: identifier = http://example.hospital.de/encounters#E_25_210; status = finished; class = IMP (IMP)](Encounter-BreastResectionEncounter.md)

**date**: 2025-02-10 17:00:00+0100

**author**: [Institut für Pathologie](Organization-PathologyLabOrganization.md)

**title**: Pathologisch-Anatomische Begutachtung - Makroskopische Beurteilung (BET)

### Attesters

| | | |
| :--- | :--- | :--- |
| - | **Mode** | **Party** |
| * | Legal | [Organization Institut für Pathologie](Organization-PathologyLabOrganization.md) |

**custodian**: [Organization Institut für Pathologie](Organization-PathologyLabOrganization.md)

### Events

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | pathology report entry task | [ServiceRequest Pathology synoptic report](ServiceRequest-BreastResectionReportRequest.md) |



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "BreastResectionComposition",
  "identifier" : {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ACSN",
        "display" : "Accession ID"
      }]
    },
    "system" : "http://example.hospital.de/pathology-reports",
    "value" : "PATH-COMP-2025-210"
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://ihe-d.de/CodeSystems/IHEXDStypeCode",
      "code" : "PATH"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "371528001",
      "display" : "Pathology report (record artifact)"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4",
    "display" : "Sabine Becker, geb. 15.03.1971 (PAT-2025-105)"
  },
  "encounter" : {
    "reference" : "Encounter/BreastResectionEncounter"
  },
  "date" : "2025-02-10T17:00:00+01:00",
  "author" : [{
    "reference" : "Organization/PathologyLabOrganization",
    "display" : "Institut für Pathologie"
  }],
  "title" : "Pathologisch-Anatomische Begutachtung - Makroskopische Beurteilung (BET)",
  "attester" : [{
    "mode" : "legal",
    "party" : {
      "reference" : "Organization/PathologyLabOrganization"
    }
  }],
  "custodian" : {
    "reference" : "Organization/PathologyLabOrganization"
  },
  "event" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "PATREPE"
      }]
    }],
    "detail" : [{
      "reference" : "ServiceRequest/BreastResectionReportRequest"
    }]
  }],
  "section" : [{
    "title" : "Pathologiebefundbericht",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "11526-1",
        "display" : "Pathology study"
      }]
    },
    "text" : {
      "status" : "additional",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h3>Klinische Angaben</h3><p>Z.n. Stanzbiopsie (E_25_105) mit Nachweis eines invasiven Mammakarzinoms NST, G2. BI-RADS 4b. BET links indiziert. Drahthäkchenmarkierung. Keine neoadjuvante Therapie. Ersterkrankung. Keine bekannte genetische Prädisposition. Präparateradiographie beigelegt.</p><h3>Material</h3><p>BET-Exzisionspräparat Mamma links, mit Haut, Drahthäkchen in situ</p><h3>Makroskopie</h3><table border=\"1\" cellpadding=\"4\" cellspacing=\"0\"><tbody><tr><td>Größe</td><td>42 × 35 × 18 mm</td></tr><tr><td>Gewicht</td><td>10 g</td></tr><tr><td>Quadrant</td><td>Unterer äußerer Quadrant</td></tr><tr><td>Zifferblatt</td><td>5 Uhr</td></tr><tr><td>Abstand Mamille</td><td>50 mm</td></tr><tr><td>Lamellierung</td><td>8 Scheiben à 5 mm</td></tr><tr><td>Schnittfläche</td><td>Grau-weißlich, derber Herdbefund zentral in Scheibe III–V, ca. 18 mm</td></tr><tr><td>Paraffinblöcke</td><td>7</td></tr></tbody></table><h3>Mikroskopie</h3><p>Invasives Mammakarzinom des NST (kein spezieller Typ), maximal 18 mm messend. Das Karzinom zeigt ein überwiegend trabekuläres und solides Wachstumsmuster mit mäßiger Kern- und Zellpolymorphie. Mitosen sind vereinzelt nachweisbar (4/10 HPF). In der Tumorperipherie zeigt sich ein begleitendes duktales Carcinoma in situ (DCIS) mit intermediärem Kerngrad und überwiegend kribriformem Wachstumsmuster, maximal 8 mm. Zentrale Komedo-Nekrosen. Assoziierte Mikroverkalkungen im DCIS-Areal. Alle Resektionsränder tumorfrei. Mindestabstand invasiv: 5 mm (posterior), DCIS: 3 mm. Keine Lymphgefäßinvasion.</p><h3>Diagnose</h3><p>Invasives Mammakarzinom NST (ICD-O 8500/3), pT1c</p><table border=\"1\" cellpadding=\"4\" cellspacing=\"0\"><tbody><tr><td>ICD-10</td><td>C50.5</td></tr><tr><td>ICD-O-3 Morphologie</td><td>M8500/3</td></tr><tr><td>Operatives Verfahren</td><td>BET (brusterhaltende Therapie)</td></tr><tr><td>Seitenlokalisation</td><td>Links</td></tr><tr><td>Fokalität</td><td>Unifokal</td></tr><tr><td>Max. Durchmesser invasiv</td><td>18 mm</td></tr><tr><td>Max. Gesamtdurchmesser</td><td>22 mm</td></tr><tr><td>Nottingham-Grad</td><td>Grad 2 (Score 6: Tubuli 3, Pleomorphie 2, Mitosen 1)</td></tr><tr><td>Assoziiertes DCIS</td><td>Vorhanden, ohne extensive intraduktale Komponente (EIC), intermediärer Kerngrad, kribriform, zentrale Komedo-Nekrosen</td></tr><tr><td>Tumorausdehnung</td><td>Auf Brustdrüse beschränkt</td></tr><tr><td>pT-Kategorie</td><td>pT1c</td></tr></tbody></table><h4>Resektionsränder</h4><table border=\"1\" cellpadding=\"4\" cellspacing=\"0\"><tbody><tr><td>RR-Status invasiv</td><td>Nicht befallen (R0)</td></tr><tr><td>Nächster tumorfreier RR</td><td>Posterior</td></tr><tr><td>Mindestabstand invasiv</td><td>5 mm</td></tr><tr><td>RR-Status DCIS</td><td>Nicht befallen</td></tr><tr><td>Mindestabstand DCIS</td><td>3 mm</td></tr></tbody></table><h4>Biomarker</h4><table border=\"1\" cellpadding=\"4\" cellspacing=\"0\"><tbody><tr><td>ER</td><td>Positiv (90%, stark)</td></tr><tr><td>PR</td><td>Positiv (60%, mäßig)</td></tr><tr><td>HER2 (IHC)</td><td>1+</td></tr><tr><td>HER2 (ISH)</td><td>Nicht amplifiziert</td></tr><tr><td>HER2-Gesamtstatus</td><td>Negativ</td></tr><tr><td>Ki-67</td><td>15%</td></tr></tbody></table><h4>Weitere Befunde</h4><table border=\"1\" cellpadding=\"4\" cellspacing=\"0\"><tbody><tr><td>Lymphgefäßinvasion</td><td>Nicht nachgewiesen</td></tr><tr><td>Mikrokalzifikationen</td><td>In DCIS assoziiert</td></tr></tbody></table><p><b>Kommentar:</b> Korrelation mit dem Vorbefund der Stanzbiopsie (E_25_105): Übereinstimmende Histologie (invasives Mammakarzinom NST, G2). Biomarkerprofil bestätigt: ER+, PR+, HER2-, Luminal-A-like. Empfehlung: Tumorkonferenz zur weiteren Therapieplanung.</p></div>"
    },
    "entry" : [{
      "reference" : "DiagnosticReport/BreastResectionReport"
    }]
  }]
}

```
