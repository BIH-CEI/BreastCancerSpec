The sentinel lymph node biopsy specimen comprises **7 specimen instances** in a three-level hierarchy: part → paraffin blocks → slides. No immunohistochemistry is performed on the lymph node specimen (biomarkers are determined on the primary tumour).

### Part

| Instance | Description |
|----------|-------------|
| [LymphNodeSpecimenPart](Specimen-LymphNodeSpecimenPart.html) | Sentinel lymph node excision specimen, left axilla, 2 SLN identified (patent blue dye), fully embedded |

### Paraffin Blocks

| Instance | Description |
|----------|-------------|
| [LymphNodeSpecimenBlock01](Specimen-LymphNodeSpecimenBlock01.html) | SLN #1, bisected — contains micrometastasis (1.2 mm) |
| [LymphNodeSpecimenBlock02](Specimen-LymphNodeSpecimenBlock02.html) | SLN #2, bisected — tumour-free |

### Slides

#### H&E Stains — Block 01 (SLN #1)

| Instance | Description |
|----------|-------------|
| [LymphNodeSpecimenSlideHE01](Specimen-LymphNodeSpecimenSlideHE01.html) | H&E slide, SLN #1, section level 1 |
| [LymphNodeSpecimenSlideHE02](Specimen-LymphNodeSpecimenSlideHE02.html) | H&E slide, SLN #1, section level 2 |

#### H&E Stains — Block 02 (SLN #2)

| Instance | Description |
|----------|-------------|
| [LymphNodeSpecimenSlideHE03](Specimen-LymphNodeSpecimenSlideHE03.html) | H&E slide, SLN #2, section level 1 |
| [LymphNodeSpecimenSlideHE04](Specimen-LymphNodeSpecimenSlideHE04.html) | H&E slide, SLN #2, section level 2 |

### Specimen Hierarchy

```
LymphNodeSpecimenPart (Sentinel LN excision)
├── LymphNodeSpecimenBlock01 (SLN #1)
│   ├── LymphNodeSpecimenSlideHE01 (H&E, level 1)
│   └── LymphNodeSpecimenSlideHE02 (H&E, level 2)
└── LymphNodeSpecimenBlock02 (SLN #2)
    ├── LymphNodeSpecimenSlideHE03 (H&E, level 1)
    └── LymphNodeSpecimenSlideHE04 (H&E, level 2)
```

### Clinical Scenario

- **Procedure**: Sentinel lymph node biopsy, left axilla, during breast-conserving surgery
- **Findings**: 2 SLN examined; SLN #1 with micrometastasis (1.2 mm in subcapsular sinus), SLN #2 tumour-free
- **Extranodal extension**: Absent
- **Staging**: pN1mi(sn)
