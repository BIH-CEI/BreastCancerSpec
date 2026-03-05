# Stanzbiopsie Mamma Pathology Report Composition - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stanzbiopsie Mamma Pathology Report Composition**

## Example Composition: Stanzbiopsie Mamma Pathology Report Composition

**identifier**: Accession ID/PATH-COMP-2025-105

**status**: Final

**type**: Tissue pathology biopsy report (record artifact)

**encounter**: [Encounter: identifier = http://example.hospital.de/encounters#E_25_105; status = finished; class = AMB (AMB)](Encounter-CoreNeedleBiopsyEncounter.md)

**date**: 2025-01-17 17:00:00+0100

**author**: [Institut für Pathologie](Organization-PathologyLabOrganization.md)

**title**: Histopathologischer Befundbericht - Stanzbiopsie Mamma links

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
| * | pathology report entry task | [ServiceRequest Pathology synoptic report](ServiceRequest-CoreNeedleBiopsyReportRequest.md) |



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "CoreNeedleBiopsyComposition",
  "identifier" : {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ACSN",
        "display" : "Accession ID"
      }]
    },
    "system" : "http://example.hospital.de/pathology-reports",
    "value" : "PATH-COMP-2025-105"
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://ihe-d.de/CodeSystems/IHEXDStypeCode",
      "code" : "PATH"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "721967005",
      "display" : "Tissue pathology biopsy report (record artifact)"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient4",
    "display" : "Sabine Becker, geb. 15.03.1971 (PAT-2025-105)"
  },
  "encounter" : {
    "reference" : "Encounter/CoreNeedleBiopsyEncounter"
  },
  "date" : "2025-01-17T17:00:00+01:00",
  "author" : [{
    "reference" : "Organization/PathologyLabOrganization",
    "display" : "Institut für Pathologie"
  }],
  "title" : "Histopathologischer Befundbericht - Stanzbiopsie Mamma links",
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
      "reference" : "ServiceRequest/CoreNeedleBiopsyReportRequest"
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
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h3>Klinische Angaben</h3><p>Herdbefund/Architekturstörung linke Brust, BI-RADS 4b. US-gestützte Stanzbiopsie.</p><h3>Material</h3><p>HG-Stanzen/Mamma, li., 5 Uhr, 5 cm von Mamille</p><h3>Makroskopie</h3><table border=\"1\" cellpadding=\"4\" cellspacing=\"0\"><tbody><tr><td>Stanzzylinder</td><td>2 Stanzzylinder, zusammen 22 mm, mittelfest, grauweißlich, Bleistiftminenstärke</td></tr><tr><td>Paraffinblöcke</td><td>1</td></tr></tbody></table><h3>Mikroskopie</h3><p>In beiden vollständig gebetteten, mit jeweils vier Schnittstufen aufgearbeiteten Punktionszylindern lipomatös und fibrolipomatös transformiertes Brustdrüsengewebe, das zu großen Teilen eingenommen wird von Tumorstrukturen eines mittelgroßzelligen, vordergründig trabekulär, solid und dissolut einzelzellig wachsenden invasiven Mammakarzinoms mit mäßiger Zell- und Kernpolymorphie sowie ganz vereinzelt nachweisbaren Mitosen (weniger als 5/10 HPF). Im Tumorzentrum unterschiedlich ausgeprägte Stromasklerose und herdförmige -elastose. An der Tumorperipherie schüttere bis mitteldichte rundzellig entzündliche Stromareaktion.</p><h3>Diagnostische Schlussfolgerung</h3><p><b>Diagnose:</b> Invasives Mammakarzinom NST (ICD-O 8500/3)</p><table border=\"1\" cellpadding=\"4\" cellspacing=\"0\"><tbody><tr><td>ICD-10</td><td>C50.5</td></tr><tr><td>ICD-O-3 Morphologie</td><td>M8500/3</td></tr><tr><td>Nottingham-Grad</td><td>Grad 2 (Score 6: Tubuli 3, Pleomorphie 2, Mitosen 1)</td></tr><tr><td>ER</td><td>Positiv (85% positive Tumorzellkerne)</td></tr><tr><td>PR</td><td>Positiv (50% positive Tumorzellkerne)</td></tr><tr><td>HER2</td><td>Negativ (nicht amplifiziert)</td></tr><tr><td>Ki-67</td><td>10%</td></tr><tr><td>B-Klassifikation</td><td>B5b (NHSBSP)</td></tr><tr><td>Relevante Mikroverkalkungen</td><td>Nein</td></tr><tr><td>Präparateradiogramm</td><td>Gesehen</td></tr><tr><td>Korrelation Mikroverkalkung</td><td>Vorliegende Verkalkung radiologisch nicht relevant (kleiner 100 Mikrometer)</td></tr></tbody></table></div>"
    },
    "entry" : [{
      "reference" : "DiagnosticReport/CoreNeedleBiopsyReport"
    }]
  }]
}

```
