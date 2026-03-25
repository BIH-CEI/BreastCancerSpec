# Integrated Report (BET + SLN) - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* **Integrated Report (BET + SLN)**

## Integrated Report (BET + SLN)

This example demonstrates the **integrated report model**, where the breast-conserving excision (BET) and sentinel lymph node (SLN) biopsy are reported as a single pathology document under one accession number. This reflects standard German clinical practice, where both specimens are obtained in a single operation and evaluated by the same pathologist (see [Clinical Context — Lymph node reporting](clinical-context.md#lymph-node-reporting-iccr-model-vs-german-clinical-practice) for background).

### Architecture

* **One Encounter** (`IntegratedEncounter`, case ID `E_25_300`) — a single surgical procedure
* **One ServiceRequest** (`IntegratedReportRequest`) — referencing both specimen parts
* **One DiagnosticReport** (`IntegratedReport`) — with two result slices: 
* `result[macroscopic-observations]` — combined macroscopic grouper
* `result[diagnostic-conclusion]` — combined diagnostic conclusion grouper
 
* **One Composition** (`IntegratedComposition`) — with combined narrative covering both BET and SLN
* **One Bundle** (`IntegratedDocument`) — containing all resources (~119 entries)
* **Two QuestionnaireResponses** — one for the breast resection questionnaire, one for the lymph node questionnaire

### Specimen Hierarchy

Two independent specimen hierarchies share the accession identifier `E_25_300`:

#### A) BET Excision Specimen (22 instances)

| | | |
| :--- | :--- | :--- |
| Part | [IntegratedBETSpecimenPart](Specimen-IntegratedBETSpecimenPart.md) | BCS excision specimen, left breast, with skin and wire localisation, 42×35×18 mm, 10 g |

**Paraffin Blocks**

| | |
| :--- | :--- |
| [IntegratedBETSpecimenBlock01](Specimen-IntegratedBETSpecimenBlock01.md) | Central tumour area, slice III (incl. anterior/posterior margins) |
| [IntegratedBETSpecimenBlock02](Specimen-IntegratedBETSpecimenBlock02.md) | Central tumour area, slice V (incl. anterior/posterior margins) |
| [IntegratedBETSpecimenBlock03](Specimen-IntegratedBETSpecimenBlock03.md) | Resection margin superior |
| [IntegratedBETSpecimenBlock04](Specimen-IntegratedBETSpecimenBlock04.md) | Resection margin inferior |
| [IntegratedBETSpecimenBlock05](Specimen-IntegratedBETSpecimenBlock05.md) | Resection margin medial (slice I) |
| [IntegratedBETSpecimenBlock06](Specimen-IntegratedBETSpecimenBlock06.md) | Resection margin lateral (slice VIII) |

**Slides — H&E (Block 01, Tumour)**

| | |
| :--- | :--- |
| [IntegratedBETSlideHE01](Specimen-IntegratedBETSlideHE01.md) | H&E slide, tumour area, section level 1 |
| [IntegratedBETSlideHE02](Specimen-IntegratedBETSlideHE02.md) | H&E slide, tumour area, section level 2 |

**Slides — H&E (Block 02, Tumour)**

| | |
| :--- | :--- |
| [IntegratedBETSlideBlock02-HE01](Specimen-IntegratedBETSlideBlock02-HE01.md) | H&E slide, tumour area slice V, section level 1 |
| [IntegratedBETSlideBlock02-HE02](Specimen-IntegratedBETSlideBlock02-HE02.md) | H&E slide, tumour area slice V, section level 2 |

**Slides — H&E Resection Margins (Blocks 03–06)**

| | |
| :--- | :--- |
| [IntegratedBETSlideRR-Superior-HE01](Specimen-IntegratedBETSlideRR-Superior-HE01.md) | H&E slide, resection margin superior |
| [IntegratedBETSlideRR-Inferior-HE01](Specimen-IntegratedBETSlideRR-Inferior-HE01.md) | H&E slide, resection margin inferior |
| [IntegratedBETSlideRR-Medial-HE01](Specimen-IntegratedBETSlideRR-Medial-HE01.md) | H&E slide, resection margin medial |
| [IntegratedBETSlideRR-Lateral-HE01](Specimen-IntegratedBETSlideRR-Lateral-HE01.md) | H&E slide, resection margin lateral |

**Slides — Immunohistochemistry (Block 01)**

| | | |
| :--- | :--- | :--- |
| [IntegratedBETSlideER01](Specimen-IntegratedBETSlideER01.md) | ER IHC | Oestrogen receptor immunohistochemistry |
| [IntegratedBETSlidePR01](Specimen-IntegratedBETSlidePR01.md) | PR IHC | Progesterone receptor immunohistochemistry |
| [IntegratedBETSlideHER2IHC01](Specimen-IntegratedBETSlideHER2IHC01.md) | HER2 IHC | HER2 immunohistochemistry |
| [IntegratedBETSlideKi67-01](Specimen-IntegratedBETSlideKi67-01.md) | Ki-67 IHC | Ki-67 immunohistochemistry |
| [IntegratedBETSlideCK18-01](Specimen-IntegratedBETSlideCK18-01.md) | CK18 IHC | Cytokeratin 18 immunohistochemistry |
| [IntegratedBETSlidep40-01](Specimen-IntegratedBETSlidep40-01.md) | p40 IHC | p40 immunohistochemistry |
| [IntegratedBETSlideECad-01](Specimen-IntegratedBETSlideECad-01.md) | E-Cadherin IHC | E-Cadherin immunohistochemistry |

#### B) SLN Excision Specimen (7 instances)

| | | |
| :--- | :--- | :--- |
| Part | [IntegratedSLNSpecimenPart](Specimen-IntegratedSLNSpecimenPart.md) | Sentinel lymph node excision specimen, left axilla, 2 SLN identified (patent blue dye) |

**Paraffin Blocks**

| | |
| :--- | :--- |
| [IntegratedSLNSpecimenBlock01](Specimen-IntegratedSLNSpecimenBlock01.md) | SLN #1, bisected — contains micrometastasis (1.2 mm) |
| [IntegratedSLNSpecimenBlock02](Specimen-IntegratedSLNSpecimenBlock02.md) | SLN #2, bisected — tumour-free |

**Slides — H&E (SLN #1, Block 01)**

| | |
| :--- | :--- |
| [IntegratedSLNSlideHE01](Specimen-IntegratedSLNSlideHE01.md) | H&E slide, SLN #1, section level 1 |
| [IntegratedSLNSlideHE02](Specimen-IntegratedSLNSlideHE02.md) | H&E slide, SLN #1, section level 2 |

**Slides — H&E (SLN #2, Block 02)**

| | |
| :--- | :--- |
| [IntegratedSLNSlideHE03](Specimen-IntegratedSLNSlideHE03.md) | H&E slide, SLN #2, section level 1 |
| [IntegratedSLNSlideHE04](Specimen-IntegratedSLNSlideHE04.md) | H&E slide, SLN #2, section level 2 |

