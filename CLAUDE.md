# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

FHIR Implementation Guide (IG) for structured breast cancer pathology reporting, built with FHIR Shorthand (FSH). Provides example FHIR resources demonstrating how to model breast cancer specimen reporting according to German clinical standards and MII (Medizininformatik-Initiative) Kerndatensatz specifications. FHIR version 4.0.1.

## Build Commands

```bash
# Compile FSH to FHIR JSON (fast, outputs to fsh-generated/resources/)
npm run sushi

# Full build: SUSHI compile + IG Publisher validation + HTML generation
npm run build

# Download/update IG Publisher JAR (required before first full build)
npm run update-publisher
```

Prerequisites: Node.js/npm, Java (for IG Publisher). The full build requires `input-cache/publisher.jar` (~229MB, auto-downloaded if missing).

View the generated IG by opening `output/index.html` after a full build.

## Architecture

### Clinical Scenarios

Four breast cancer pathology scenarios, each in its own directory under `input/fsh/examples/`:

- **DCISResection/** — Ductal Carcinoma in Situ resection
- **InvasiveCarcinomaResection/** — Invasive carcinoma NST with TNM staging and biomarkers (ER, PR, HER2, Ki-67)
- **NeoadjuvantTherapyResection/** — Post-chemotherapy resection with Residual Cancer Burden (RCB) scoring
- **LymphNodeSpecimens/** — Sentinel lymph node biopsy with nodal staging

Shared context resources (Patient, Practitioner, Organization) live in `ContextResources/`.

### Resource Flow per Scenario

Each scenario follows the same FHIR resource chain:

```
ServiceRequest → Encounter → Condition → Specimen (Part → Block → Slide)
                                              ↓
                              Observation (MacroscopyGrouper, DiagnosticConclusionGrouper)
                                              ↓
                              DiagnosticReport → Composition → Bundle
                                              ↓
                              QuestionnaireResponse
```

### File Organization within Each Scenario

Each scenario directory contains one FSH file per resource type: `serviceRequest.fsh`, `encounter.fsh`, `diagnosis.fsh`, `specimens.fsh`, `macroscopy.fsh`, `diagnostic-conclusion.fsh`, `diagnostic-report.fsh`, `composition.fsh`, `bundle-document.fsh`, `questionnaire-response.fsh`.

### Specimen Hierarchy

Specimens follow a three-level parent chain: **Part** (received tissue) → **Block** (paraffin-embedded) → **Slide** (stained section). Each level uses `parent = Reference(...)` to establish the hierarchy.

### Observation Groupers

- **MacroscopicGrouper**: Groups specimen dimension observations (length, width, depth, weight)
- **DiagnosticConclusionGrouper**: Groups microscopic findings (histological type, grade, margins, TNM, biomarkers) via `hasMember` references

### Key FSH Conventions

- All instances conform to MII Pathology module profiles (defined as aliases in `aliases.fsh`)
- The `MetaProfile` ruleset in `rulesets.fsh` adds versioned profile metadata (`|2026.0.0`)
- Terminology: LOINC (observation codes), SNOMED CT (clinical findings), ICD-10-GM (German diagnoses), ICD-O-3 (morphology), UCUM (units)
- Descriptions and clinical text are in German; titles and FSH identifiers are in English

### FHIR Dependencies (sushi-config.yaml)

All four MII Kerndatensatz modules at version 2026.0.0: patho, onko, base, biobank. These are auto-resolved by IG Publisher during full build.

### Documentation Pages

Narrative markdown pages in `input/pagecontent/` describe clinical context, motivation, and per-scenario specimen details. Page structure is defined in `sushi-config.yaml`.

## Planned Restructuring (TODO)

The current four scenarios will be replaced by three report types that mirror real-world pathology workflow:

1. **Stanz-/Vakuumbiopsien** — Core needle / vacuum-assisted biopsy reports
2. **OP-Präparate** — Surgical specimen reports (resections)
3. **Axilläre Lymphknotenpräparate** — Axillary lymph node specimen reports

### Open items

- **Findings (Observations)**: The individual diagnostic elements (findings) within each report type are not yet defined and will be specified in a later session.
- **ServiceRequest.supportingInfo**: Clinical context information (e.g. prior imaging, clinical history) will be passed as `supportingInfo` references on the ServiceRequest. The concrete elements are still to be determined.
- **Report Viewer**: A viewer/renderer is needed so that individual reports (Bundles/Compositions) can be displayed in a human-readable format within the IG.
