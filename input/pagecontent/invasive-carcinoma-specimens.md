### Invasive Carcinoma Resection Specimens

This scenario models an **invasive breast carcinoma (NST)** resection specimen from a 62-year-old female patient (Anna Mueller).

#### Clinical Setting
- Palpable tumor, upper outer quadrant, right breast
- Breast-conserving surgery

#### Specimen Hierarchy

| Level | Instance | Description |
|-------|----------|-------------|
| Part | Resection specimen | Lumpectomy specimen, right breast |
| Block | Paraffinblock 01–04 | Paraffin-embedded tissue blocks (tumor + margins) |
| Slide | HE-Schnitte, IHC-Schnitte | H&E and immunohistochemistry sections |

#### Key Findings
- **Histological Type:** Invasive carcinoma NST (ICD-O-3: 8500/3)
- **Nottingham Grade:** Grade 2 (score 6: tubules 2, pleomorphism 2, mitoses 2)
- **Tumor Size:** 18 mm
- **Biomarkers:** ER 90%, PR 60%, HER2 1+ (negative), Ki-67 15%
- **Margins:** Uninvolved (closest margin 5 mm)
- **TNM:** pT1c pN0(sn) R0

#### Resources
- [ServiceRequest](ServiceRequest-InvasiveCarcinomaResectionReportRequest.html)
- [DiagnosticReport](DiagnosticReport-InvasiveCarcinomaResectionReport.html)
- [Macroscopy Grouper](Observation-InvasiveCarcinomaResectionMacroscopicGrouper.html)
- [Diagnostic Conclusion Grouper](Observation-InvasiveCarcinomaResectionDiagnosticConclusionGrouper.html)
- [Composition](Composition-InvasiveCarcinomaResectionComposition.html)
