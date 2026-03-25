# Lymph Node Specimen — Specimens - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* **Lymph Node Specimen — Specimens**

## Lymph Node Specimen — Specimens

This example follows the **ICCR-oriented model**, where the sentinel lymph node biopsy is reported as a standalone document. In German clinical practice, the SLN report is usually integrated into the breast specimen report under a single accession number (see [Clinical Context — Lymph node reporting](clinical-context.md#lymph-node-reporting-iccr-model-vs-german-clinical-practice) for details on both approaches). An integrated report example combining both breast and lymph node findings is available under [Integrated Report (BET + SLN)](integrated-report.md).

The sentinel lymph node biopsy specimen comprises **7 specimen instances** in a three-level hierarchy: part → paraffin blocks → slides. No immunohistochemistry is performed on the lymph node specimen (biomarkers are determined on the primary tumour).

### Part

| | |
| :--- | :--- |
| [LymphNodeSpecimenPart](Specimen-LymphNodeSpecimenPart.md) | Sentinel lymph node excision specimen, left axilla, 2 SLN identified (patent blue dye), fully embedded |

### Paraffin Blocks

| | |
| :--- | :--- |
| [LymphNodeSpecimenBlock01](Specimen-LymphNodeSpecimenBlock01.md) | SLN #1, bisected — contains micrometastasis (1.2 mm) |
| [LymphNodeSpecimenBlock02](Specimen-LymphNodeSpecimenBlock02.md) | SLN #2, bisected — tumour-free |

### Slides

#### H&E Stains — Block 01 (SLN #1)

| | |
| :--- | :--- |
| [LymphNodeSpecimenSlideHE01](Specimen-LymphNodeSpecimenSlideHE01.md) | H&E slide, SLN #1, section level 1 |
| [LymphNodeSpecimenSlideHE02](Specimen-LymphNodeSpecimenSlideHE02.md) | H&E slide, SLN #1, section level 2 |

#### H&E Stains — Block 02 (SLN #2)

| | |
| :--- | :--- |
| [LymphNodeSpecimenSlideHE03](Specimen-LymphNodeSpecimenSlideHE03.md) | H&E slide, SLN #2, section level 1 |
| [LymphNodeSpecimenSlideHE04](Specimen-LymphNodeSpecimenSlideHE04.md) | H&E slide, SLN #2, section level 2 |

