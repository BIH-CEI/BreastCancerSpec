# Document Bundle - SLN-Biopsie Axilla - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document Bundle - SLN-Biopsie Axilla**

## Example Bundle: Document Bundle - SLN-Biopsie Axilla



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "LymphNodeDocument",
  "identifier" : {
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_003"
  },
  "type" : "document",
  "timestamp" : "2025-02-10T17:00:00+01:00",
  "entry" : [{
    "fullUrl" : "http://breastcancerspec.org/Composition/LymphNodeComposition",
    "resource" : {
      "resourceType" : "Composition",
      "id" : "LymphNodeComposition",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_LymphNodeComposition\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Composition LymphNodeComposition</b></p><a name=\"LymphNodeComposition\"> </a><a name=\"hcLymphNodeComposition\"> </a><p><b>identifier</b>: Accession ID/PATH-COMP-2025-211</p><p><b>status</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://ihe-d.de/CodeSystems/IHEXDStypeCode PATH}, {http://snomed.info/sct 371528001}\">Pathology report (record artifact)</span></p><p><b>encounter</b>: <a href=\"Encounter-LymphNodeEncounter.html\">Encounter: identifier = http://example.hospital.de/encounters#E_25_211; status = finished; class = IMP (IMP)</a></p><p><b>date</b>: 2025-02-10 17:00:00+0100</p><p><b>author</b>: <a href=\"Organization-PathologyLabOrganization.html\">Institut für Pathologie</a></p><p><b>title</b>: Histopathologischer Befundbericht - SLN-Biopsie Axilla links</p><h3>Attesters</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Mode</b></td><td><b>Party</b></td></tr><tr><td style=\"display: none\">*</td><td>Legal</td><td><a href=\"Organization-PathologyLabOrganization.html\">Organization Institut für Pathologie</a></td></tr></table><p><b>custodian</b>: <a href=\"Organization-PathologyLabOrganization.html\">Organization Institut für Pathologie</a></p><h3>Events</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Detail</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ActCode PATREPE}\">pathology report entry task</span></td><td><a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></td></tr></table></div>"
      },
      "identifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "ACSN",
            "display" : "Accession ID"
          }]
        },
        "system" : "http://example.hospital.de/pathology-reports",
        "value" : "PATH-COMP-2025-211"
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
        "reference" : "Encounter/LymphNodeEncounter"
      },
      "date" : "2025-02-10T17:00:00+01:00",
      "author" : [{
        "reference" : "Organization/PathologyLabOrganization",
        "display" : "Institut für Pathologie"
      }],
      "title" : "Histopathologischer Befundbericht - SLN-Biopsie Axilla links",
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
          "reference" : "ServiceRequest/LymphNodeReportRequest"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h3>Klinische Angaben</h3><p>Invasives Mammakarzinom NST links, G2. Klinisch unauffällige Axilla (cN0). SLN-Biopsie indiziert. Keine neoadjuvante Therapie.</p><h3>Material</h3><p>Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert)</p><h3>Makroskopie</h3><table border=\"1\" cellpadding=\"4\" cellspacing=\"0\"><tbody><tr><td>SLN #1</td><td>12 × 8 × 6 mm, Patentblau-markiert, halbiert</td></tr><tr><td>SLN #2</td><td>10 × 7 × 5 mm, Patentblau-markiert, halbiert</td></tr><tr><td>Einbettung</td><td>Beide SLN vollständig eingebettet, je 1 Paraffinblock</td></tr></tbody></table><h3>Mikroskopie</h3><p>SLN #1: Im Randsinus Nachweis einer Mikrometastase, maximal 1,2 mm messend. Keine Kapseldurchbrechung. SLN #2: In allen Schnittstufen tumorfrei. Kein Anhalt für isolierte Tumorzellen (ITC).</p><h3>Diagnostische Schlussfolgerung</h3><table border=\"1\" cellpadding=\"4\" cellspacing=\"0\"><tbody><tr><td>Prozedur</td><td>Sentinel-Lymphknoten-Biopsie</td></tr><tr><td>Seitenlokalisation</td><td>Links</td></tr><tr><td>Untersuchte SLN</td><td>2</td></tr><tr><td>Befallene SLN</td><td>1</td></tr><tr><td>Untersuchte Non-SLN</td><td>0</td></tr><tr><td>Befallene Non-SLN</td><td>0</td></tr><tr><td>Gesamtzahl untersuchter LK</td><td>2</td></tr><tr><td>Gesamtzahl befallener LK</td><td>1</td></tr><tr><td>Makrometastasen</td><td>0</td></tr><tr><td>Mikrometastasen</td><td>1</td></tr><tr><td>ITC</td><td>0</td></tr><tr><td>Größte Metastasenausdehnung</td><td>1,2 mm</td></tr><tr><td>Extranodale Infiltration</td><td>Nicht vorhanden</td></tr></tbody></table><h4>pN-Staging</h4><p><b>pN1mi(sn)</b> — Mikrometastase in Sentinel-Lymphknoten</p><p><b>Kommentar:</b> In SLN #1 Nachweis einer Mikrometastase (1,2 mm) im Randsinus. SLN #2 tumorfrei in allen Schnittstufen. Keine extranodale Infiltration. Empfehlung: Besprechung in Tumorkonferenz bzgl. weiterer axillärer Therapie.</p></div>"
        },
        "entry" : [{
          "reference" : "DiagnosticReport/LymphNodeReport"
        }]
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Patient/Patient4",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "Patient4",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_Patient4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient Patient4</b></p><a name=\"Patient4\"> </a><a name=\"hcPatient4\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</p><hr/></div>"
      },
      "identifier" : [{
        "system" : "http://example.hospital.de/patient-ids",
        "value" : "PAT-2025-105"
      }],
      "name" : [{
        "family" : "Becker",
        "given" : ["Sabine"]
      }],
      "gender" : "female",
      "birthDate" : "1971-03-15"
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Organization/PathologyLabOrganization",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "PathologyLabOrganization",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_PathologyLabOrganization\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization PathologyLabOrganization</b></p><a name=\"PathologyLabOrganization\"> </a><a name=\"hcPathologyLabOrganization\"> </a><p><b>identifier</b>: <code>http://example.hospital.de/organization-ids</code>/ORG-PATH-001</p><p><b>name</b>: Institut für Pathologie</p></div>"
      },
      "identifier" : [{
        "system" : "http://example.hospital.de/organization-ids",
        "value" : "ORG-PATH-001"
      }],
      "name" : "Institut für Pathologie"
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Practitioner/PathologistPractitioner",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "PathologistPractitioner",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_PathologistPractitioner\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner PathologistPractitioner</b></p><a name=\"PathologistPractitioner\"> </a><a name=\"hcPathologistPractitioner\"> </a><p><b>identifier</b>: <code>http://example.hospital.de/practitioner-ids</code>/PATH-001</p><p><b>name</b>: Elisabeth Hoffmann </p><h3>Qualifications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 394595002}\">Pathology</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "http://example.hospital.de/practitioner-ids",
        "value" : "PATH-001"
      }],
      "name" : [{
        "family" : "Hoffmann",
        "given" : ["Elisabeth"],
        "prefix" : ["Dr."]
      }],
      "qualification" : [{
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "394595002",
            "display" : "Pathology"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Practitioner/BreastSurgeonPractitioner",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "BreastSurgeonPractitioner",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_BreastSurgeonPractitioner\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner BreastSurgeonPractitioner</b></p><a name=\"BreastSurgeonPractitioner\"> </a><a name=\"hcBreastSurgeonPractitioner\"> </a><p><b>identifier</b>: <code>http://example.hospital.de/practitioner-ids</code>/GYN-001</p><p><b>name</b>: Thomas Richter </p><h3>Qualifications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 394586005}\">Gynecology</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "http://example.hospital.de/practitioner-ids",
        "value" : "GYN-001"
      }],
      "name" : [{
        "family" : "Richter",
        "given" : ["Thomas"],
        "prefix" : ["Prof. Dr."]
      }],
      "qualification" : [{
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "394586005",
            "display" : "Gynecology"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Encounter/LymphNodeEncounter",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "LymphNodeEncounter",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_LymphNodeEncounter\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter LymphNodeEncounter</b></p><a name=\"LymphNodeEncounter\"> </a><a name=\"hcLymphNodeEncounter\"> </a><p><b>identifier</b>: <code>http://example.hospital.de/encounters</code>/E_25_211</p><p><b>status</b>: Finished</p><p><b>class</b>: [not stated]: IMP (IMP)</p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p></div>"
      },
      "identifier" : [{
        "system" : "http://example.hospital.de/encounters",
        "value" : "E_25_211"
      }],
      "status" : "finished",
      "class" : {
        "code" : "IMP"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      }
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Condition/LymphNodeDiagnosisConfirmed",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "LymphNodeDiagnosisConfirmed",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_LymphNodeDiagnosisConfirmed\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition LymphNodeDiagnosisConfirmed</b></p><a name=\"LymphNodeDiagnosisConfirmed\"> </a><a name=\"hcLymphNodeDiagnosisConfirmed\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose\">MII PR Diagnose Conditionversion: null2026.0.0)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category encounter-diagnosis}\">Encounter Diagnosis</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm C50.5}\">Bösartige Neubildung: Unterer äußerer Quadrant der Brustdrüse</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>encounter</b>: <a href=\"Encounter-LymphNodeEncounter.html\">Encounter: identifier = http://example.hospital.de/encounters#E_25_211; status = finished; class = IMP (IMP)</a></p><p><b>onset</b>: 2025-01-15</p><p><b>recordedDate</b>: 2025-02-05</p><p><b>note</b>: </p><blockquote><div><p>Invasives Mammakarzinom NST links, G2. SLN-Biopsie indiziert bei klinisch unauffälliger Axilla (cN0).</p>\n</div></blockquote></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "encounter-diagnosis"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2025",
          "code" : "C50.5",
          "display" : "Bösartige Neubildung: Unterer äußerer Quadrant der Brustdrüse"
        }]
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "encounter" : {
        "reference" : "Encounter/LymphNodeEncounter"
      },
      "onsetDateTime" : "2025-01-15",
      "recordedDate" : "2025-02-05",
      "note" : [{
        "text" : "Invasives Mammakarzinom NST links, G2. SLN-Biopsie indiziert bei klinisch unauffälliger Axilla (cN0)."
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/ServiceRequest/LymphNodeReportRequest",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "LymphNodeReportRequest",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_LymphNodeReportRequest\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest LymphNodeReportRequest</b></p><a name=\"LymphNodeReportRequest\"> </a><a name=\"hcLymphNodeReportRequest\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request\">MII PR Patho Service Requestversion: null2026.0.0)</a></p></div><p><b>identifier</b>: Placer Identifier/PATH-RPT-2025-211</p><p><b>status</b>: Completed</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 726007}\">Pathology consultation, comprehensive, records and specimen with report (procedure)</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 60568-3}\">Pathology synoptic report</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>encounter</b>: <a href=\"Encounter-LymphNodeEncounter.html\">Encounter: identifier = http://example.hospital.de/encounters#E_25_211; status = finished; class = IMP (IMP)</a></p><p><b>requester</b>: <a href=\"Practitioner-BreastSurgeonPractitioner.html\">Practitioner Thomas Richter </a></p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>reasonCode</b>: <span title=\"Codes:{http://snomed.info/sct 254838004}\">Carcinoma of breast (disorder)</span></p><p><b>supportingInfo</b>: </p><ul><li><a href=\"Condition-LymphNodeDiagnosisConfirmed.html\">Condition Bösartige Neubildung: Unterer äußerer Quadrant der Brustdrüse</a></li><li><a href=\"DiagnosticReport-LymphNodeImagingReport.html\">Diagnostic Report for 'MG Breast Screening' for '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></li><li><a href=\"Observation-LymphNodeSpecimenLimited.html\">Observation Satisfactory for evaluation but limited by lack of pertinent clinical patient information (finding)</a></li></ul><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenPart.html\">Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC",
            "display" : "Placer Identifier"
          }]
        },
        "system" : "http://example.hospital.de/serviceRequest",
        "value" : "PATH-RPT-2025-211"
      }],
      "status" : "completed",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "726007",
          "display" : "Pathology consultation, comprehensive, records and specimen with report (procedure)"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "60568-3",
          "display" : "Pathology synoptic report"
        }]
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "encounter" : {
        "reference" : "Encounter/LymphNodeEncounter"
      },
      "requester" : {
        "reference" : "Practitioner/BreastSurgeonPractitioner"
      },
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "reasonCode" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "254838004",
          "display" : "Carcinoma of breast (disorder)"
        }]
      }],
      "supportingInfo" : [{
        "reference" : "Condition/LymphNodeDiagnosisConfirmed"
      },
      {
        "reference" : "DiagnosticReport/LymphNodeImagingReport"
      },
      {
        "reference" : "Observation/LymphNodeSpecimenLimited"
      }],
      "specimen" : [{
        "reference" : "Specimen/LymphNodeSpecimenPart"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/DiagnosticReport/LymphNodeImagingReport",
    "resource" : {
      "resourceType" : "DiagnosticReport",
      "id" : "LymphNodeImagingReport",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_LymphNodeImagingReport\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DiagnosticReport LymphNodeImagingReport</b></p><a name=\"LymphNodeImagingReport\"> </a><a name=\"hcLymphNodeImagingReport\"> </a><h2><span title=\"Codes:{http://loinc.org 24606-6}\">MG Breast Screening</span> (<span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 RAD}\">Radiology</span>) </h2><table class=\"grid\"><tr><td>Subject</td><td>Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</td></tr><tr><td>When For</td><td>2025-01-08</td></tr></table><p><b>Report Details</b></p><p>Mammografie und Sonographie: Klinisch unauffällige Axilla links (cN0). Kein Hinweis auf pathologische axilläre Lymphknoten.</p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "RAD",
          "display" : "Radiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "24606-6",
          "display" : "MG Breast Screening"
        }]
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-01-08",
      "conclusion" : "Mammografie und Sonographie: Klinisch unauffällige Axilla links (cN0). Kein Hinweis auf pathologische axilläre Lymphknoten."
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeSpecimenLimited",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeSpecimenLimited",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeSpecimenLimited\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeSpecimenLimited</b></p><a name=\"LymphNodeSpecimenLimited\"> </a><a name=\"hcLymphNodeSpecimenLimited\"> </a><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 125156009}\">Proben limitiert auswertbar wegen fehlender klinischer Informationen</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 373067005}\">No (qualifier value)</span></p></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "125156009",
          "display" : "Satisfactory for evaluation but limited by lack of pertinent clinical patient information (finding)"
        }],
        "text" : "Proben limitiert auswertbar wegen fehlender klinischer Informationen"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No (qualifier value)"
        }]
      }
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/DiagnosticReport/LymphNodeReport",
    "resource" : {
      "resourceType" : "DiagnosticReport",
      "id" : "LymphNodeReport",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_LymphNodeReport\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DiagnosticReport LymphNodeReport</b></p><a name=\"LymphNodeReport\"> </a><a name=\"hcLymphNodeReport\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report\">MII PR Patho Reportversion: null2026.0.0)</a></p></div><h2><span title=\"Codes:{http://loinc.org 60568-3}\">Pathology Synoptic report</span> (<span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 SP}\">Surgical Pathology</span>) </h2><table class=\"grid\"><tr><td>Subject</td><td>Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</td></tr><tr><td>When For</td><td>2025-02-10 14:00:00+0100</td></tr><tr><td>Reported</td><td>2025-02-10 17:00:00+0100</td></tr><tr><td>Performer</td><td> <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></td></tr><tr><td>Identifier</td><td> Accession ID/E_25_211</td></tr></table><p><b>Report Details</b></p><table class=\"grid\"><tr><td><b>Code</b></td><td><b>Value</b></td><td><b>Flags</b></td><td><b>When For</b></td></tr><tr><td><a href=\"Observation-LymphNodeMacroscopicGrouper.html\"><span title=\"Codes:{http://loinc.org 22634-0}\">Pathology report gross observation Narrative</span></a> (<span title=\"Codes:{http://snomed.info/sct 68171009}\">Axillary lymph node structure (body structure)</span>)</td><td/><td>Final</td><td>2025-02-06 08:30:00+0100</td></tr><tr><td><a href=\"Observation-LymphNodeDiagnosticConclusionGrouper.html\"><span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></a></td><td/><td>Final</td><td>2025-02-10</td></tr></table><p>Sentinel-Lymphknoten-Biopsie linke Axilla: 2 SLN untersucht, 1x Mikrometastase (1,2 mm) in SLN #1, 1x tumorfrei (SLN #2). Keine extranodale Infiltration. pN1mi(sn).</p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "ACSN",
            "display" : "Accession ID"
          }]
        },
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211"
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "SP",
          "display" : "Surgical Pathology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "60568-3",
          "display" : "Pathology Synoptic report"
        }]
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10T14:00:00+01:00",
      "issued" : "2025-02-10T17:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "specimen" : [{
        "reference" : "Specimen/LymphNodeSpecimenPart"
      },
      {
        "reference" : "Specimen/LymphNodeSpecimenBlock01"
      },
      {
        "reference" : "Specimen/LymphNodeSpecimenBlock02"
      },
      {
        "reference" : "Specimen/LymphNodeSpecimenSlideHE01"
      },
      {
        "reference" : "Specimen/LymphNodeSpecimenSlideHE02"
      },
      {
        "reference" : "Specimen/LymphNodeSpecimenSlideHE03"
      },
      {
        "reference" : "Specimen/LymphNodeSpecimenSlideHE04"
      }],
      "result" : [{
        "reference" : "Observation/LymphNodeMacroscopicGrouper"
      },
      {
        "reference" : "Observation/LymphNodeDiagnosticConclusionGrouper"
      }],
      "conclusion" : "Sentinel-Lymphknoten-Biopsie linke Axilla: 2 SLN untersucht, 1x Mikrometastase (1,2 mm) in SLN #1, 1x tumorfrei (SLN #2). Keine extranodale Infiltration. pN1mi(sn)."
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Specimen/LymphNodeSpecimenPart",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "LymphNodeSpecimenPart",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_LymphNodeSpecimenPart\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen LymphNodeSpecimenPart</b></p><a name=\"LymphNodeSpecimenPart\"> </a><a name=\"hcLymphNodeSpecimenPart\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen\">MII PR Patho Specimenversion: null2026.0.0)</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore\">MII PR Biobank Specimen Bioprobe Coreversion: null2026.0.0)</a></p></div><p><b>identifier</b>: Placer Identifier/OP25_211_A, Filler Identifier/E_25_211_A</p><p><b>accessionIdentifier</b>: <code>https://pathologie.example-hospital.de/fhir/fn/befundbericht</code>/E_25_211</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 258589002}\">Lymph node specimen (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>request</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collector</b></td><td><b>Collected[x]</b></td><td><b>Method</b></td><td><b>BodySite</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-BreastSurgeonPractitioner.html\">Practitioner Thomas Richter </a></td><td>2025-02-05 10:30:00+0100</td><td><span title=\"Codes:{http://snomed.info/sct 396487001}\">Sentinel lymph node biopsy (procedure)</span></td><td><span title=\"Codes:{http://snomed.info/sct 68171009}\">Axillary lymph node structure (body structure)</span></td></tr></table><h3>Containers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Additive[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 434746001}\">Specimen vial (physical object)</span></td><td><span title=\"Codes:{http://snomed.info/sct 434162003}\">Neutral buffered formalin (substance)</span></td></tr></table><p><b>note</b>: </p><blockquote><div><p>Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</p>\n</div></blockquote></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC"
          }]
        },
        "system" : "https://senologie.example-hospital.de/fhir/specimen/placer",
        "value" : "OP25_211_A"
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "FILL"
          }]
        },
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211_A"
      }],
      "accessionIdentifier" : {
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "258589002",
          "display" : "Lymph node specimen (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "request" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "collection" : {
        "collector" : {
          "reference" : "Practitioner/BreastSurgeonPractitioner"
        },
        "collectedDateTime" : "2025-02-05T10:30:00+01:00",
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "396487001",
            "display" : "Sentinel lymph node biopsy (procedure)"
          }]
        },
        "bodySite" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "68171009",
            "display" : "Axillary lymph node structure (body structure)"
          }]
        }
      },
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "434746001",
            "display" : "Specimen vial (physical object)"
          }]
        },
        "additiveCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "434162003",
            "display" : "Neutral buffered formalin (substance)"
          }]
        }
      }],
      "note" : [{
        "text" : "Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet."
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Specimen/LymphNodeSpecimenBlock01",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "LymphNodeSpecimenBlock01",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_LymphNodeSpecimenBlock01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen LymphNodeSpecimenBlock01</b></p><a name=\"LymphNodeSpecimenBlock01\"> </a><a name=\"hcLymphNodeSpecimenBlock01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen\">MII PR Patho Specimenversion: null2026.0.0)</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore\">MII PR Biobank Specimen Bioprobe Coreversion: null2026.0.0)</a></p></div><p><b>identifier</b>: <code>https://pathologie.example-hospital.de/fhir/fn/befundbericht</code>/E_25_211_A_1</p><p><b>accessionIdentifier</b>: <code>https://pathologie.example-hospital.de/fhir/fn/befundbericht</code>/E_25_211</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 1201985008}\">Tissue block specimen (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>parent</b>: <a href=\"Specimen-LymphNodeSpecimenPart.html\">Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td><td><b>Method</b></td></tr><tr><td style=\"display: none\">*</td><td>2025-02-06 08:00:00+0100</td><td><span title=\"Codes:{http://snomed.info/sct 787377000}\">Gross examination and sampling of tissue specimen (procedure)</span></td></tr></table><h3>Processings</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Description</b></td><td><b>Procedure</b></td><td><b>Time[x]</b></td></tr><tr><td style=\"display: none\">*</td><td/><td>Zuschnitt und Paraffineinbettung - SLN #1 (halbiert)</td><td><span title=\"Codes:{http://snomed.info/sct 787376009}\">Preparation of formalin fixed paraffin embedded tissue specimen (procedure)</span></td><td>2025-02-06 08:00:00+0100</td></tr></table><h3>Containers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Additive[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 706053007}\">General specimen container (physical object)</span></td><td><span title=\"Codes:{http://snomed.info/sct 311731000}\">Paraffin wax (substance)</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211_A_1"
      }],
      "accessionIdentifier" : {
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1201985008",
          "display" : "Tissue block specimen (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "parent" : [{
        "reference" : "Specimen/LymphNodeSpecimenPart"
      }],
      "collection" : {
        "collectedDateTime" : "2025-02-06T08:00:00+01:00",
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "787377000",
            "display" : "Gross examination and sampling of tissue specimen (procedure)"
          }]
        }
      },
      "processing" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 2,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 8,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "Zuschnitt und Paraffineinbettung - SLN #1 (halbiert)",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "787376009",
            "display" : "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
          }]
        },
        "timeDateTime" : "2025-02-06T08:00:00+01:00"
      }],
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "706053007",
            "display" : "General specimen container (physical object)"
          }]
        },
        "additiveCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "311731000",
            "display" : "Paraffin wax (substance)"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Specimen/LymphNodeSpecimenBlock02",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "LymphNodeSpecimenBlock02",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_LymphNodeSpecimenBlock02\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen LymphNodeSpecimenBlock02</b></p><a name=\"LymphNodeSpecimenBlock02\"> </a><a name=\"hcLymphNodeSpecimenBlock02\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen\">MII PR Patho Specimenversion: null2026.0.0)</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore\">MII PR Biobank Specimen Bioprobe Coreversion: null2026.0.0)</a></p></div><p><b>identifier</b>: <code>https://pathologie.example-hospital.de/fhir/fn/befundbericht</code>/E_25_211_A_2</p><p><b>accessionIdentifier</b>: <code>https://pathologie.example-hospital.de/fhir/fn/befundbericht</code>/E_25_211</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 1201985008}\">Tissue block specimen (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>parent</b>: <a href=\"Specimen-LymphNodeSpecimenPart.html\">Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td><td><b>Method</b></td></tr><tr><td style=\"display: none\">*</td><td>2025-02-06 08:10:00+0100</td><td><span title=\"Codes:{http://snomed.info/sct 787377000}\">Gross examination and sampling of tissue specimen (procedure)</span></td></tr></table><h3>Processings</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Description</b></td><td><b>Procedure</b></td><td><b>Time[x]</b></td></tr><tr><td style=\"display: none\">*</td><td/><td>Zuschnitt und Paraffineinbettung - SLN #2 (halbiert)</td><td><span title=\"Codes:{http://snomed.info/sct 787376009}\">Preparation of formalin fixed paraffin embedded tissue specimen (procedure)</span></td><td>2025-02-06 08:10:00+0100</td></tr></table><h3>Containers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Additive[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 706053007}\">General specimen container (physical object)</span></td><td><span title=\"Codes:{http://snomed.info/sct 311731000}\">Paraffin wax (substance)</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211_A_2"
      }],
      "accessionIdentifier" : {
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1201985008",
          "display" : "Tissue block specimen (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "parent" : [{
        "reference" : "Specimen/LymphNodeSpecimenPart"
      }],
      "collection" : {
        "collectedDateTime" : "2025-02-06T08:10:00+01:00",
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "787377000",
            "display" : "Gross examination and sampling of tissue specimen (procedure)"
          }]
        }
      },
      "processing" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 2,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 8,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "Zuschnitt und Paraffineinbettung - SLN #2 (halbiert)",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "787376009",
            "display" : "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
          }]
        },
        "timeDateTime" : "2025-02-06T08:10:00+01:00"
      }],
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "706053007",
            "display" : "General specimen container (physical object)"
          }]
        },
        "additiveCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "311731000",
            "display" : "Paraffin wax (substance)"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Specimen/LymphNodeSpecimenSlideHE01",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "LymphNodeSpecimenSlideHE01",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_LymphNodeSpecimenSlideHE01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen LymphNodeSpecimenSlideHE01</b></p><a name=\"LymphNodeSpecimenSlideHE01\"> </a><a name=\"hcLymphNodeSpecimenSlideHE01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen\">MII PR Patho Specimenversion: null2026.0.0)</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore\">MII PR Biobank Specimen Bioprobe Coreversion: null2026.0.0)</a></p></div><p><b>identifier</b>: <code>https://pathologie.example-hospital.de/fhir/fn/befundbericht</code>/E_25_211_A_1_1_HE_01</p><p><b>accessionIdentifier</b>: <code>https://pathologie.example-hospital.de/fhir/fn/befundbericht</code>/E_25_211</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 430856003}\">Tissue section (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>parent</b>: <a href=\"Specimen-LymphNodeSpecimenBlock01.html\">Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211_A_1; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Tissue block specimen (specimen)</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td><td><b>Method</b></td></tr><tr><td style=\"display: none\">*</td><td>2025-02-06 09:00:00+0100</td><td><span title=\"Codes:{http://snomed.info/sct 13283003}\">Tissue processing technique (procedure)</span></td></tr></table><blockquote><p><b>processing</b></p><p><b>MII EX Biobank Temperaturbedingungen</b>: 20-25 °C</p><p><b>description</b>: Schnittherstellung (Schnittstufe 1)</p><p><b>procedure</b>: <span title=\"Codes:{http://snomed.info/sct 434472006}\">Sectioning of tissue block (procedure)</span></p><p><b>time</b>: 2025-02-06 09:00:00+0100</p></blockquote><blockquote><p><b>processing</b></p><p><b>MII EX Biobank Temperaturbedingungen</b>: 20-25 °C</p><p><b>description</b>: HE-Färbung</p><p><b>procedure</b>: <span title=\"Codes:{http://snomed.info/sct 104210008}\">Hematoxylin and eosin stain method (procedure)</span></p><p><b>time</b>: 2025-02-06 09:15:00+0100</p></blockquote><h3>Containers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Additive[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 433466003}\">Microscope slide (physical object)</span></td><td><span title=\"Codes:{http://snomed.info/sct 430862008}\">Microscope slide mounting medium (substance)</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211_A_1_1_HE_01"
      }],
      "accessionIdentifier" : {
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "430856003",
          "display" : "Tissue section (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "parent" : [{
        "reference" : "Specimen/LymphNodeSpecimenBlock01"
      }],
      "collection" : {
        "collectedDateTime" : "2025-02-06T09:00:00+01:00",
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "13283003",
            "display" : "Tissue processing technique (procedure)"
          }]
        }
      },
      "processing" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 20,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 25,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "Schnittherstellung (Schnittstufe 1)",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "434472006",
            "display" : "Sectioning of tissue block (procedure)"
          }]
        },
        "timeDateTime" : "2025-02-06T09:00:00+01:00"
      },
      {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 20,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 25,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "HE-Färbung",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "104210008",
            "display" : "Hematoxylin and eosin stain method (procedure)"
          }]
        },
        "timeDateTime" : "2025-02-06T09:15:00+01:00"
      }],
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "433466003",
            "display" : "Microscope slide (physical object)"
          }]
        },
        "additiveCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "430862008",
            "display" : "Microscope slide mounting medium (substance)"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Specimen/LymphNodeSpecimenSlideHE02",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "LymphNodeSpecimenSlideHE02",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_LymphNodeSpecimenSlideHE02\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen LymphNodeSpecimenSlideHE02</b></p><a name=\"LymphNodeSpecimenSlideHE02\"> </a><a name=\"hcLymphNodeSpecimenSlideHE02\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen\">MII PR Patho Specimenversion: null2026.0.0)</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore\">MII PR Biobank Specimen Bioprobe Coreversion: null2026.0.0)</a></p></div><p><b>identifier</b>: <code>https://pathologie.example-hospital.de/fhir/fn/befundbericht</code>/E_25_211_A_1_1_HE_02</p><p><b>accessionIdentifier</b>: <code>https://pathologie.example-hospital.de/fhir/fn/befundbericht</code>/E_25_211</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 430856003}\">Tissue section (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>parent</b>: <a href=\"Specimen-LymphNodeSpecimenBlock01.html\">Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211_A_1; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Tissue block specimen (specimen)</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td><td><b>Method</b></td></tr><tr><td style=\"display: none\">*</td><td>2025-02-06 09:05:00+0100</td><td><span title=\"Codes:{http://snomed.info/sct 13283003}\">Tissue processing technique (procedure)</span></td></tr></table><blockquote><p><b>processing</b></p><p><b>MII EX Biobank Temperaturbedingungen</b>: 20-25 °C</p><p><b>description</b>: Schnittherstellung (Schnittstufe 2)</p><p><b>procedure</b>: <span title=\"Codes:{http://snomed.info/sct 434472006}\">Sectioning of tissue block (procedure)</span></p><p><b>time</b>: 2025-02-06 09:05:00+0100</p></blockquote><blockquote><p><b>processing</b></p><p><b>MII EX Biobank Temperaturbedingungen</b>: 20-25 °C</p><p><b>description</b>: HE-Färbung</p><p><b>procedure</b>: <span title=\"Codes:{http://snomed.info/sct 104210008}\">Hematoxylin and eosin stain method (procedure)</span></p><p><b>time</b>: 2025-02-06 09:20:00+0100</p></blockquote><h3>Containers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Additive[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 433466003}\">Microscope slide (physical object)</span></td><td><span title=\"Codes:{http://snomed.info/sct 430862008}\">Microscope slide mounting medium (substance)</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211_A_1_1_HE_02"
      }],
      "accessionIdentifier" : {
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "430856003",
          "display" : "Tissue section (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "parent" : [{
        "reference" : "Specimen/LymphNodeSpecimenBlock01"
      }],
      "collection" : {
        "collectedDateTime" : "2025-02-06T09:05:00+01:00",
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "13283003",
            "display" : "Tissue processing technique (procedure)"
          }]
        }
      },
      "processing" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 20,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 25,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "Schnittherstellung (Schnittstufe 2)",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "434472006",
            "display" : "Sectioning of tissue block (procedure)"
          }]
        },
        "timeDateTime" : "2025-02-06T09:05:00+01:00"
      },
      {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 20,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 25,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "HE-Färbung",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "104210008",
            "display" : "Hematoxylin and eosin stain method (procedure)"
          }]
        },
        "timeDateTime" : "2025-02-06T09:20:00+01:00"
      }],
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "433466003",
            "display" : "Microscope slide (physical object)"
          }]
        },
        "additiveCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "430862008",
            "display" : "Microscope slide mounting medium (substance)"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Specimen/LymphNodeSpecimenSlideHE03",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "LymphNodeSpecimenSlideHE03",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_LymphNodeSpecimenSlideHE03\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen LymphNodeSpecimenSlideHE03</b></p><a name=\"LymphNodeSpecimenSlideHE03\"> </a><a name=\"hcLymphNodeSpecimenSlideHE03\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen\">MII PR Patho Specimenversion: null2026.0.0)</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore\">MII PR Biobank Specimen Bioprobe Coreversion: null2026.0.0)</a></p></div><p><b>identifier</b>: <code>https://pathologie.example-hospital.de/fhir/fn/befundbericht</code>/E_25_211_A_2_1_HE_01</p><p><b>accessionIdentifier</b>: <code>https://pathologie.example-hospital.de/fhir/fn/befundbericht</code>/E_25_211</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 430856003}\">Tissue section (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>parent</b>: <a href=\"Specimen-LymphNodeSpecimenBlock02.html\">Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211_A_2; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Tissue block specimen (specimen)</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td><td><b>Method</b></td></tr><tr><td style=\"display: none\">*</td><td>2025-02-06 09:10:00+0100</td><td><span title=\"Codes:{http://snomed.info/sct 13283003}\">Tissue processing technique (procedure)</span></td></tr></table><blockquote><p><b>processing</b></p><p><b>MII EX Biobank Temperaturbedingungen</b>: 20-25 °C</p><p><b>description</b>: Schnittherstellung (Schnittstufe 1)</p><p><b>procedure</b>: <span title=\"Codes:{http://snomed.info/sct 434472006}\">Sectioning of tissue block (procedure)</span></p><p><b>time</b>: 2025-02-06 09:10:00+0100</p></blockquote><blockquote><p><b>processing</b></p><p><b>MII EX Biobank Temperaturbedingungen</b>: 20-25 °C</p><p><b>description</b>: HE-Färbung</p><p><b>procedure</b>: <span title=\"Codes:{http://snomed.info/sct 104210008}\">Hematoxylin and eosin stain method (procedure)</span></p><p><b>time</b>: 2025-02-06 09:25:00+0100</p></blockquote><h3>Containers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Additive[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 433466003}\">Microscope slide (physical object)</span></td><td><span title=\"Codes:{http://snomed.info/sct 430862008}\">Microscope slide mounting medium (substance)</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211_A_2_1_HE_01"
      }],
      "accessionIdentifier" : {
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "430856003",
          "display" : "Tissue section (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "parent" : [{
        "reference" : "Specimen/LymphNodeSpecimenBlock02"
      }],
      "collection" : {
        "collectedDateTime" : "2025-02-06T09:10:00+01:00",
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "13283003",
            "display" : "Tissue processing technique (procedure)"
          }]
        }
      },
      "processing" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 20,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 25,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "Schnittherstellung (Schnittstufe 1)",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "434472006",
            "display" : "Sectioning of tissue block (procedure)"
          }]
        },
        "timeDateTime" : "2025-02-06T09:10:00+01:00"
      },
      {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 20,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 25,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "HE-Färbung",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "104210008",
            "display" : "Hematoxylin and eosin stain method (procedure)"
          }]
        },
        "timeDateTime" : "2025-02-06T09:25:00+01:00"
      }],
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "433466003",
            "display" : "Microscope slide (physical object)"
          }]
        },
        "additiveCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "430862008",
            "display" : "Microscope slide mounting medium (substance)"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Specimen/LymphNodeSpecimenSlideHE04",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "LymphNodeSpecimenSlideHE04",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2026.0.0",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|2026.0.0"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_LymphNodeSpecimenSlideHE04\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen LymphNodeSpecimenSlideHE04</b></p><a name=\"LymphNodeSpecimenSlideHE04\"> </a><a name=\"hcLymphNodeSpecimenSlideHE04\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen\">MII PR Patho Specimenversion: null2026.0.0)</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore\">MII PR Biobank Specimen Bioprobe Coreversion: null2026.0.0)</a></p></div><p><b>identifier</b>: <code>https://pathologie.example-hospital.de/fhir/fn/befundbericht</code>/E_25_211_A_2_1_HE_02</p><p><b>accessionIdentifier</b>: <code>https://pathologie.example-hospital.de/fhir/fn/befundbericht</code>/E_25_211</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 430856003}\">Tissue section (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>parent</b>: <a href=\"Specimen-LymphNodeSpecimenBlock02.html\">Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211_A_2; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Tissue block specimen (specimen)</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td><td><b>Method</b></td></tr><tr><td style=\"display: none\">*</td><td>2025-02-06 09:15:00+0100</td><td><span title=\"Codes:{http://snomed.info/sct 13283003}\">Tissue processing technique (procedure)</span></td></tr></table><blockquote><p><b>processing</b></p><p><b>MII EX Biobank Temperaturbedingungen</b>: 20-25 °C</p><p><b>description</b>: Schnittherstellung (Schnittstufe 2)</p><p><b>procedure</b>: <span title=\"Codes:{http://snomed.info/sct 434472006}\">Sectioning of tissue block (procedure)</span></p><p><b>time</b>: 2025-02-06 09:15:00+0100</p></blockquote><blockquote><p><b>processing</b></p><p><b>MII EX Biobank Temperaturbedingungen</b>: 20-25 °C</p><p><b>description</b>: HE-Färbung</p><p><b>procedure</b>: <span title=\"Codes:{http://snomed.info/sct 104210008}\">Hematoxylin and eosin stain method (procedure)</span></p><p><b>time</b>: 2025-02-06 09:30:00+0100</p></blockquote><h3>Containers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Additive[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 433466003}\">Microscope slide (physical object)</span></td><td><span title=\"Codes:{http://snomed.info/sct 430862008}\">Microscope slide mounting medium (substance)</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211_A_2_1_HE_02"
      }],
      "accessionIdentifier" : {
        "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
        "value" : "E_25_211"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "430856003",
          "display" : "Tissue section (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "parent" : [{
        "reference" : "Specimen/LymphNodeSpecimenBlock02"
      }],
      "collection" : {
        "collectedDateTime" : "2025-02-06T09:15:00+01:00",
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "13283003",
            "display" : "Tissue processing technique (procedure)"
          }]
        }
      },
      "processing" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 20,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 25,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "Schnittherstellung (Schnittstufe 2)",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "434472006",
            "display" : "Sectioning of tissue block (procedure)"
          }]
        },
        "timeDateTime" : "2025-02-06T09:15:00+01:00"
      },
      {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 20,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 25,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "HE-Färbung",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "104210008",
            "display" : "Hematoxylin and eosin stain method (procedure)"
          }]
        },
        "timeDateTime" : "2025-02-06T09:30:00+01:00"
      }],
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "433466003",
            "display" : "Microscope slide (physical object)"
          }]
        },
        "additiveCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "430862008",
            "display" : "Microscope slide mounting medium (substance)"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeMacroscopicGrouper",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeMacroscopicGrouper",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeMacroscopicGrouper\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeMacroscopicGrouper</b></p><a name=\"LymphNodeMacroscopicGrouper\"> </a><a name=\"hcLymphNodeMacroscopicGrouper\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper\">MII PR Patho Macroscopic Grouperversion: null2026.0.0)</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 22634-0}\">Pathology report gross observation Narrative</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-06 08:30:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 68171009}\">Axillary lymph node structure (body structure)</span></p><p><b>hasMember</b>: </p><ul><li><a href=\"Observation-LymphNodeMacroSLN1Size.html\">Observation Length of tissue core(s)</a></li><li><a href=\"Observation-LymphNodeMacroSLN2Size.html\">Observation Length of tissue core(s)</a></li></ul><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22634-0"
        }]
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-06T08:30:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "68171009",
          "display" : "Axillary lymph node structure (body structure)"
        }]
      },
      "hasMember" : [{
        "reference" : "Observation/LymphNodeMacroSLN1Size"
      },
      {
        "reference" : "Observation/LymphNodeMacroSLN2Size"
      }],
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeMacroSLN1Size",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeMacroSLN1Size",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeMacroSLN1Size\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeMacroSLN1Size</b></p><a name=\"LymphNodeMacroSLN1Size\"> </a><a name=\"hcLymphNodeMacroSLN1Size\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22634-0}\">Pathology report gross observation Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44619-5}\">SLN #1 Größe</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-06 08:30:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: 12 x 8 x 6 mm, Patentblau-markiert</p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 68171009}\">Axillary lymph node structure (body structure)</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenBlock01.html\">Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211_A_1; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Tissue block specimen (specimen)</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22634-0"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44619-5",
          "display" : "Length of tissue core(s)"
        }],
        "text" : "SLN #1 Größe"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-06T08:30:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueString" : "12 x 8 x 6 mm, Patentblau-markiert",
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "68171009",
          "display" : "Axillary lymph node structure (body structure)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenBlock01"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeMacroSLN2Size",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeMacroSLN2Size",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeMacroSLN2Size\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeMacroSLN2Size</b></p><a name=\"LymphNodeMacroSLN2Size\"> </a><a name=\"hcLymphNodeMacroSLN2Size\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22634-0}\">Pathology report gross observation Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44619-5}\">SLN #2 Größe</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-06 08:30:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: 10 x 7 x 5 mm, Patentblau-markiert</p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 68171009}\">Axillary lymph node structure (body structure)</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenBlock02.html\">Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211_A_2; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Tissue block specimen (specimen)</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22634-0"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44619-5",
          "display" : "Length of tissue core(s)"
        }],
        "text" : "SLN #2 Größe"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-06T08:30:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueString" : "10 x 7 x 5 mm, Patentblau-markiert",
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "68171009",
          "display" : "Axillary lymph node structure (body structure)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenBlock02"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeDiagnosticConclusionGrouper",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeDiagnosticConclusionGrouper",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeDiagnosticConclusionGrouper\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeDiagnosticConclusionGrouper</b></p><a name=\"LymphNodeDiagnosticConclusionGrouper\"> </a><a name=\"hcLymphNodeDiagnosticConclusionGrouper\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper\">MII PR Patho Diagnostic Conclusion Grouperversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>hasMember</b>: </p><ul><li><a href=\"Observation-LymphNodeProcedure.html\">Observation Surgery procedure for regional nodes at facility.YYY Cancer</a></li><li><a href=\"Observation-LymphNodeLaterality.html\">Observation Anatomic part Laterality</a></li><li><a href=\"Observation-LymphNodeNonSLNExamined.html\">Observation Regional lymph nodes examined [#] Specimen</a></li><li><a href=\"Observation-LymphNodeNonSLNPositive.html\">Observation Regional lymph nodes positive [#] Specimen</a></li><li><a href=\"Observation-LymphNodeSLNExamined.html\">Observation Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy</a></li><li><a href=\"Observation-LymphNodeSLNPositive.html\">Observation Number of sentinel lymph nodes containing metastatic neoplasm in excised specimen (observable entity)</a></li><li><a href=\"Observation-LymphNodeTotalExamined.html\">Observation Lymph nodes examined [#] in Cancer specimen by Light microscopy</a></li><li><a href=\"Observation-LymphNodeTotalPositive.html\">Observation Lymph nodes with metastasis [#] in Cancer specimen</a></li><li><a href=\"Observation-LymphNodeMacroMetCount.html\">Observation Lymph nodes with macrometastases [#] in Cancer specimen by Light microscopy</a></li><li><a href=\"Observation-LymphNodeMicroMetCount.html\">Observation Lymph nodes with micrometastases [#] in Cancer specimen by Light microscopy</a></li><li><a href=\"Observation-LymphNodeITCCount.html\">Observation Lymph nodes with isolated tumor cells [#] in Cancer specimen by Light microscopy</a></li><li><a href=\"Observation-LymphNodeLargestMetSize.html\">Observation Lymph node metastatic deposit.max dimension [Length] in Cancer specimen by Light microscopy</a></li><li><a href=\"Observation-LymphNodeExtranodalExtension.html\">Observation Extranodal extension of carcinoma [Presence] in Cancer specimen by Light microscopy</a></li><li><a href=\"Observation-LymphNodePN.html\">Observation Regional lymph nodes.clinical [Class] Cancer</a></li><li><a href=\"Observation-LymphNodeComment.html\">Observation Pathology report comments [Interpretation] Narrative</a></li></ul><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "hasMember" : [{
        "reference" : "Observation/LymphNodeProcedure"
      },
      {
        "reference" : "Observation/LymphNodeLaterality"
      },
      {
        "reference" : "Observation/LymphNodeNonSLNExamined"
      },
      {
        "reference" : "Observation/LymphNodeNonSLNPositive"
      },
      {
        "reference" : "Observation/LymphNodeSLNExamined"
      },
      {
        "reference" : "Observation/LymphNodeSLNPositive"
      },
      {
        "reference" : "Observation/LymphNodeTotalExamined"
      },
      {
        "reference" : "Observation/LymphNodeTotalPositive"
      },
      {
        "reference" : "Observation/LymphNodeMacroMetCount"
      },
      {
        "reference" : "Observation/LymphNodeMicroMetCount"
      },
      {
        "reference" : "Observation/LymphNodeITCCount"
      },
      {
        "reference" : "Observation/LymphNodeLargestMetSize"
      },
      {
        "reference" : "Observation/LymphNodeExtranodalExtension"
      },
      {
        "reference" : "Observation/LymphNodePN"
      },
      {
        "reference" : "Observation/LymphNodeComment"
      }],
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeProcedure",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeProcedure",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeProcedure\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeProcedure</b></p><a name=\"LymphNodeProcedure\"> </a><a name=\"hcLymphNodeProcedure\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 21877-6}\">LK OP Prozedur</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 396487001}\">Sentinel-Lymphknoten-Biopsie</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenPart.html\">Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "21877-6",
          "display" : "Surgery procedure for regional nodes at facility.YYY Cancer"
        }],
        "text" : "LK OP Prozedur"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "396487001",
          "display" : "Sentinel lymph node biopsy (procedure)"
        }],
        "text" : "Sentinel-Lymphknoten-Biopsie"
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenPart"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeLaterality",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeLaterality",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeLaterality\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeLaterality</b></p><a name=\"LymphNodeLaterality\"> </a><a name=\"hcLymphNodeLaterality\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 20228-3}\">Seitenangabe</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 7771000}\">Links</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenPart.html\">Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "20228-3",
          "display" : "Anatomic part Laterality"
        }],
        "text" : "Seitenangabe"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "7771000",
          "display" : "Left (qualifier value)"
        }],
        "text" : "Links"
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenPart"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeNonSLNExamined",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeNonSLNExamined",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeNonSLNExamined\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeNonSLNExamined</b></p><a name=\"LymphNodeNonSLNExamined\"> </a><a name=\"hcLymphNodeNonSLNExamined\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 21894-1}\">Anzahl untersuchter Non-SLN-axillärer LK</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: 0 {count}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{count} = '{count}')</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenPart.html\">Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "21894-1",
          "display" : "Regional lymph nodes examined [#] Specimen"
        }],
        "text" : "Anzahl untersuchter Non-SLN-axillärer LK"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueQuantity" : {
        "value" : 0,
        "unit" : "{count}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}"
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenPart"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeNonSLNPositive",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeNonSLNPositive",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeNonSLNPositive\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeNonSLNPositive</b></p><a name=\"LymphNodeNonSLNPositive\"> </a><a name=\"hcLymphNodeNonSLNPositive\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 21893-3}\">Anzahl befallener Non-SLN-axillärer LK</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: 0 {count}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{count} = '{count}')</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenPart.html\">Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "21893-3",
          "display" : "Regional lymph nodes positive [#] Specimen"
        }],
        "text" : "Anzahl befallener Non-SLN-axillärer LK"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueQuantity" : {
        "value" : 0,
        "unit" : "{count}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}"
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenPart"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeSLNExamined",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeSLNExamined",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeSLNExamined\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeSLNExamined</b></p><a name=\"LymphNodeSLNExamined\"> </a><a name=\"hcLymphNodeSLNExamined\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85347-3}\">Anzahl untersuchter Sentinel-LK</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: 2 {count}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{count} = '{count}')</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenPart.html\">Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85347-3",
          "display" : "Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy"
        }],
        "text" : "Anzahl untersuchter Sentinel-LK"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueQuantity" : {
        "value" : 2,
        "unit" : "{count}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}"
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenPart"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeSLNPositive",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeSLNPositive",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeSLNPositive\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeSLNPositive</b></p><a name=\"LymphNodeSLNPositive\"> </a><a name=\"hcLymphNodeSLNPositive\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 1264491009}\">Anzahl befallener Sentinel-LK</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: 1 {count}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{count} = '{count}')</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenPart.html\">Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1264491009",
          "display" : "Number of sentinel lymph nodes containing metastatic neoplasm in excised specimen (observable entity)"
        }],
        "text" : "Anzahl befallener Sentinel-LK"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueQuantity" : {
        "value" : 1,
        "unit" : "{count}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}"
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenPart"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeTotalExamined",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeTotalExamined",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeTotalExamined\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeTotalExamined</b></p><a name=\"LymphNodeTotalExamined\"> </a><a name=\"hcLymphNodeTotalExamined\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 92833-3}\">Gesamtzahl untersuchter Lymphknoten</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: 2 {count}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{count} = '{count}')</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenPart.html\">Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "92833-3",
          "display" : "Lymph nodes examined [#] in Cancer specimen by Light microscopy"
        }],
        "text" : "Gesamtzahl untersuchter Lymphknoten"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueQuantity" : {
        "value" : 2,
        "unit" : "{count}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}"
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenPart"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeTotalPositive",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeTotalPositive",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeTotalPositive\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeTotalPositive</b></p><a name=\"LymphNodeTotalPositive\"> </a><a name=\"hcLymphNodeTotalPositive\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 92831-7}\">Gesamtzahl befallener Lymphknoten</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: 1 {count}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{count} = '{count}')</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenPart.html\">Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "92831-7",
          "display" : "Lymph nodes with metastasis [#] in Cancer specimen"
        }],
        "text" : "Gesamtzahl befallener Lymphknoten"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueQuantity" : {
        "value" : 1,
        "unit" : "{count}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}"
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenPart"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeMacroMetCount",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeMacroMetCount",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeMacroMetCount\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeMacroMetCount</b></p><a name=\"LymphNodeMacroMetCount\"> </a><a name=\"hcLymphNodeMacroMetCount\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85343-2}\">Gesamtzahl makrometastatisch befallener LK</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: 0 {count}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{count} = '{count}')</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenPart.html\">Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85343-2",
          "display" : "Lymph nodes with macrometastases [#] in Cancer specimen by Light microscopy"
        }],
        "text" : "Gesamtzahl makrometastatisch befallener LK"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueQuantity" : {
        "value" : 0,
        "unit" : "{count}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}"
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenPart"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeMicroMetCount",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeMicroMetCount",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeMicroMetCount\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeMicroMetCount</b></p><a name=\"LymphNodeMicroMetCount\"> </a><a name=\"hcLymphNodeMicroMetCount\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85344-0}\">Gesamtzahl mikrometastatisch befallener LK</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: 1 {count}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{count} = '{count}')</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenPart.html\">Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85344-0",
          "display" : "Lymph nodes with micrometastases [#] in Cancer specimen by Light microscopy"
        }],
        "text" : "Gesamtzahl mikrometastatisch befallener LK"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueQuantity" : {
        "value" : 1,
        "unit" : "{count}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}"
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenPart"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeITCCount",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeITCCount",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeITCCount\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeITCCount</b></p><a name=\"LymphNodeITCCount\"> </a><a name=\"hcLymphNodeITCCount\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85352-3}\">Gesamtzahl ausschließlich ITC-befallener LK</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: 0 {count}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{count} = '{count}')</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenPart.html\">Specimen: identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Lymph node specimen (specimen); note = Sentinel-Lymphknoten-Exzisat linke Axilla, 2 SLN identifiziert (Patentblau-markiert). SLN #1: 12 x 8 x 6 mm, SLN #2: 10 x 7 x 5 mm. Beide halbiert und vollständig eingebettet.</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85352-3",
          "display" : "Lymph nodes with isolated tumor cells [#] in Cancer specimen by Light microscopy"
        }],
        "text" : "Gesamtzahl ausschließlich ITC-befallener LK"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueQuantity" : {
        "value" : 0,
        "unit" : "{count}",
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}"
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenPart"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeLargestMetSize",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeLargestMetSize",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeLargestMetSize\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeLargestMetSize</b></p><a name=\"LymphNodeLargestMetSize\"> </a><a name=\"hcLymphNodeLargestMetSize\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85351-5}\">Ausdehnung der größten metastatischen Infiltration</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: 1.2 mm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm = 'mm')</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenSlideHE01.html\">Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211_A_1_1_HE_01; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Tissue section (specimen)</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85351-5",
          "display" : "Lymph node metastatic deposit.max dimension [Length] in Cancer specimen by Light microscopy"
        }],
        "text" : "Ausdehnung der größten metastatischen Infiltration"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueQuantity" : {
        "value" : 1.2,
        "unit" : "mm",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm"
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenSlideHE01"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeExtranodalExtension",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeExtranodalExtension",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeExtranodalExtension\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeExtranodalExtension</b></p><a name=\"LymphNodeExtranodalExtension\"> </a><a name=\"hcLymphNodeExtranodalExtension\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85350-7}\">Extranodale Infiltration durch LK-Metastase</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 2667000}\">Nicht vorhanden</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenSlideHE01.html\">Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211_A_1_1_HE_01; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Tissue section (specimen)</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85350-7",
          "display" : "Extranodal extension of carcinoma [Presence] in Cancer specimen by Light microscopy"
        }],
        "text" : "Extranodale Infiltration durch LK-Metastase"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "2667000",
          "display" : "Absent (qualifier value)"
        }],
        "text" : "Nicht vorhanden"
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenSlideHE01"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodePN",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodePN",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodePN\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodePN</b></p><a name=\"LymphNodePN\"> </a><a name=\"hcLymphNodePN\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie\">MII PR Onkologie TNM N-Kategorieversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 21906-3}, {http://snomed.info/sct 371494008}\">Regionäre Lymphknoten (pN-Kategorie)</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-n-kategorie-werte pN1mi(sn)}\">pN1mi(sn)</span></p><p><b>specimen</b>: <a href=\"Specimen-LymphNodeSpecimenSlideHE01.html\">Specimen: identifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211_A_1_1_HE_01; accessionIdentifier = https://pathologie.example-hospital.de/fhir/fn/befundbericht#E_25_211; status = available; type = Tissue section (specimen)</a></p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "21906-3",
          "display" : "Regional lymph nodes.clinical [Class] Cancer"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "371494008",
          "display" : "pN category (observable entity)"
        }],
        "text" : "Regionäre Lymphknoten (pN-Kategorie)"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-n-kategorie-werte",
          "code" : "pN1mi(sn)"
        }],
        "text" : "pN1mi(sn)"
      },
      "specimen" : {
        "reference" : "Specimen/LymphNodeSpecimenSlideHE01"
      },
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/Observation/LymphNodeComment",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "LymphNodeComment",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2026.0.0"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_LymphNodeComment\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation LymphNodeComment</b></p><a name=\"LymphNodeComment\"> </a><a name=\"hcLymphNodeComment\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Findingversion: null2026.0.0)</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-LymphNodeReportRequest.html\">ServiceRequest Pathology synoptic report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 22638-1}\">Kommentar</span></p><p><b>subject</b>: <a href=\"Patient-Patient4.html\">Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)</a></p><p><b>effective</b>: 2025-02-10</p><p><b>performer</b>: <a href=\"Practitioner-PathologistPractitioner.html\">Practitioner Elisabeth Hoffmann </a></p><p><b>value</b>: In SLN #1 Nachweis einer Mikrometastase (1,2 mm) im Randsinus. SLN #2 tumorfrei in allen Schnittstufen. Keine extranodale Infiltration. Klassifikation: pN1mi(sn). Empfehlung: Besprechung in Tumorkonferenz bzgl. weiterer axillärer Therapie.</p><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-QuestionnaireResponseLymphNode.html\">Response to Questionnaire 'http://breastcancerspec.org/Questionnaire/OP_LN-Mamma' about '-&gt;Sabine Becker  Female, DoB: 1971-03-15 ( http://example.hospital.de/patient-ids#PAT-2025-105)'</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/LymphNodeReportRequest"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22638-1",
          "display" : "Pathology report comments [Interpretation] Narrative"
        }],
        "text" : "Kommentar"
      },
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "effectiveDateTime" : "2025-02-10",
      "performer" : [{
        "reference" : "Practitioner/PathologistPractitioner"
      }],
      "valueString" : "In SLN #1 Nachweis einer Mikrometastase (1,2 mm) im Randsinus. SLN #2 tumorfrei in allen Schnittstufen. Keine extranodale Infiltration. Klassifikation: pN1mi(sn). Empfehlung: Besprechung in Tumorkonferenz bzgl. weiterer axillärer Therapie.",
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/QuestionnaireResponseLymphNode"
      }]
    }
  },
  {
    "fullUrl" : "http://breastcancerspec.org/QuestionnaireResponse/QuestionnaireResponseLymphNode",
    "resource" : {
      "resourceType" : "QuestionnaireResponse",
      "id" : "QuestionnaireResponseLymphNode",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"QuestionnaireResponse_QuestionnaireResponseLymphNode\"> </a><p class=\"res-header-id\"><b>Generated Narrative: QuestionnaireResponse QuestionnaireResponseLymphNode</b></p><a name=\"QuestionnaireResponseLymphNode\"> </a><a name=\"hcQuestionnaireResponseLymphNode\"> </a><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The linkID for the item\">LinkID</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Text for the item\">Text</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the item can appear in the instance\">Definition</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The type of the item\">Answer</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"QuestionnaireResponseRoot\" class=\"hierarchy\"/> QuestionnaireResponseLymphNode</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Questionnaire:http://breastcancerspec.org/Questionnaire/OP_LN-Mamma</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck01.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> sln.root</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">SLN-Biopsie Axilla</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck011.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> sln.clinical</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Klinische Angaben</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11951</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Proben limitiert auswertbar</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"http://snomed.info/id/373067005\">SNOMED CT: 373067005</a> (No (qualifier value))</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11950</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">LK-Biopsie veranlassende klinische/bildgebende Befunde</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Invasives Mammakarzinom NST links, cN0</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11148</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Bildgebende Befunde</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Mammografie, Sonographie: Axilla klinisch unauffällig</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0100.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 10210</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Neoadjuvante Therapie</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"http://snomed.info/id/373067005\">SNOMED CT: 373067005</a> (No (qualifier value))</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck011.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> sln.macro</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Makroskopie</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> sln.macro.sln1</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">SLN #1 Größe</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">12 x 8 x 6 mm, Patentblau-markiert</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0100.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> sln.macro.sln2</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">SLN #2 Größe</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">10 x 7 x 5 mm, Patentblau-markiert</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck011.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> sln.findings</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Axilläre Lymphknotenpräparate</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11540</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">LK OP Prozedur</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"http://snomed.info/id/396487001\">SNOMED CT: 396487001</a> (Sentinel lymph node biopsy (procedure))</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11620</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Seitenangabe</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"http://snomed.info/id/7771000\">SNOMED CT: 7771000</a> (Left (qualifier value))</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11630</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Anzahl der untersuchten (nonSLN)-axillären LK</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11640</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Anzahl der befallenen (nonSLN)-axillären LK</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11650</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Anzahl der untersuchten Sentinel-LK</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11660</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Anzahl der befallenen Sentinel-LK</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11944</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Gesamtzahl untersuchter Lymphknoten</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11945</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Gesamtzahl befallener Lymphknoten</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11947</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Gesamtzahl makrometastatisch befallener Lymphknoten</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11948</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Gesamtzahl mikrometastatisch befallener Lymphknoten</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11946</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Gesamtzahl ausschließlich ITC-befallener Lymphknoten</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11690</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Ausdehnung der größten metastatischen Infiltration</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span>1.2 mm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm = 'mm')</span></span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0100.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 11700</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Extranodale Infiltration durch LK-Metastase</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"http://snomed.info/id/2667000\">SNOMED CT: 2667000</a> (Absent (qualifier value))</span></span></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck001.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Group\" class=\"hierarchy\"/> sln.tnm</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Pathologisches TNM-Staging</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck0000.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> 175</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Regionäre Lymphknoten (pN-Kategorie)</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">pN1mi(sn)</td></tr>\r\n<tr><td colspan=\"4\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
      },
      "questionnaire" : "http://breastcancerspec.org/Questionnaire/OP_LN-Mamma",
      "status" : "completed",
      "subject" : {
        "reference" : "Patient/Patient4"
      },
      "authored" : "2025-02-10T14:30:00+01:00",
      "author" : {
        "reference" : "Practitioner/PathologistPractitioner"
      },
      "item" : [{
        "linkId" : "sln.root",
        "text" : "SLN-Biopsie Axilla",
        "item" : [{
          "linkId" : "sln.clinical",
          "text" : "Klinische Angaben",
          "item" : [{
            "linkId" : "11951",
            "text" : "Proben limitiert auswertbar",
            "answer" : [{
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "373067005",
                "display" : "No (qualifier value)"
              }
            }]
          },
          {
            "linkId" : "11950",
            "text" : "LK-Biopsie veranlassende klinische/bildgebende Befunde",
            "answer" : [{
              "valueString" : "Invasives Mammakarzinom NST links, cN0"
            }]
          },
          {
            "linkId" : "11148",
            "text" : "Bildgebende Befunde",
            "answer" : [{
              "valueString" : "Mammografie, Sonographie: Axilla klinisch unauffällig"
            }]
          },
          {
            "linkId" : "10210",
            "text" : "Neoadjuvante Therapie",
            "answer" : [{
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "373067005",
                "display" : "No (qualifier value)"
              }
            }]
          }]
        },
        {
          "linkId" : "sln.macro",
          "text" : "Makroskopie",
          "item" : [{
            "linkId" : "sln.macro.sln1",
            "text" : "SLN #1 Größe",
            "answer" : [{
              "valueString" : "12 x 8 x 6 mm, Patentblau-markiert"
            }]
          },
          {
            "linkId" : "sln.macro.sln2",
            "text" : "SLN #2 Größe",
            "answer" : [{
              "valueString" : "10 x 7 x 5 mm, Patentblau-markiert"
            }]
          }]
        },
        {
          "linkId" : "sln.findings",
          "text" : "Axilläre Lymphknotenpräparate",
          "item" : [{
            "linkId" : "11540",
            "text" : "LK OP Prozedur",
            "answer" : [{
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "396487001",
                "display" : "Sentinel lymph node biopsy (procedure)"
              }
            }]
          },
          {
            "linkId" : "11620",
            "text" : "Seitenangabe",
            "answer" : [{
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "7771000",
                "display" : "Left (qualifier value)"
              }
            }]
          },
          {
            "linkId" : "11630",
            "text" : "Anzahl der untersuchten (nonSLN)-axillären LK",
            "answer" : [{
              "valueInteger" : 0
            }]
          },
          {
            "linkId" : "11640",
            "text" : "Anzahl der befallenen (nonSLN)-axillären LK",
            "answer" : [{
              "valueInteger" : 0
            }]
          },
          {
            "linkId" : "11650",
            "text" : "Anzahl der untersuchten Sentinel-LK",
            "answer" : [{
              "valueInteger" : 2
            }]
          },
          {
            "linkId" : "11660",
            "text" : "Anzahl der befallenen Sentinel-LK",
            "answer" : [{
              "valueInteger" : 1
            }]
          },
          {
            "linkId" : "11944",
            "text" : "Gesamtzahl untersuchter Lymphknoten",
            "answer" : [{
              "valueInteger" : 2
            }]
          },
          {
            "linkId" : "11945",
            "text" : "Gesamtzahl befallener Lymphknoten",
            "answer" : [{
              "valueInteger" : 1
            }]
          },
          {
            "linkId" : "11947",
            "text" : "Gesamtzahl makrometastatisch befallener Lymphknoten",
            "answer" : [{
              "valueInteger" : 0
            }]
          },
          {
            "linkId" : "11948",
            "text" : "Gesamtzahl mikrometastatisch befallener Lymphknoten",
            "answer" : [{
              "valueInteger" : 1
            }]
          },
          {
            "linkId" : "11946",
            "text" : "Gesamtzahl ausschließlich ITC-befallener Lymphknoten",
            "answer" : [{
              "valueInteger" : 0
            }]
          },
          {
            "linkId" : "11690",
            "text" : "Ausdehnung der größten metastatischen Infiltration",
            "answer" : [{
              "valueQuantity" : {
                "value" : 1.2,
                "unit" : "mm",
                "system" : "http://unitsofmeasure.org",
                "code" : "mm"
              }
            }]
          },
          {
            "linkId" : "11700",
            "text" : "Extranodale Infiltration durch LK-Metastase",
            "answer" : [{
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "2667000",
                "display" : "Absent (qualifier value)"
              }
            }]
          }]
        },
        {
          "linkId" : "sln.tnm",
          "text" : "Pathologisches TNM-Staging",
          "item" : [{
            "linkId" : "175",
            "text" : "Regionäre Lymphknoten (pN-Kategorie)",
            "answer" : [{
              "valueString" : "pN1mi(sn)"
            }]
          }]
        }]
      }]
    }
  }]
}

```
