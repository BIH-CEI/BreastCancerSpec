### DCIS Resection Specimens

This scenario models a **Ductal Carcinoma in Situ (DCIS)** resection specimen from a 65-year-old female patient (Petra Weber).

#### Clinical Setting
- Screening-detected DCIS, left breast
- Breast-conserving surgery (lumpectomy)

#### Specimen Hierarchy

| Level | Instance | Description |
|-------|----------|-------------|
| Part | Resection specimen | Lumpectomy specimen, left breast |
| Block | Paraffinblock 01–03 | Paraffin-embedded tissue blocks |
| Slide | HE-Schnitte 01–03 | H&E stained sections |

#### Key Findings
- **Histological Type:** Ductal Carcinoma in Situ (ICD-O-3: 8500/2)
- **Nuclear Grade:** Grade 3 (high-grade)
- **Pattern:** Comedo-type
- **Necrosis:** Present
- **Size:** 25 mm
- **Margins:** Uninvolved (closest margin 3 mm)
- **Calcifications:** Present
- **Microinvasion:** Absent

#### Resources
- [ServiceRequest](ServiceRequest-DCISResectionReportRequest.html)
- [DiagnosticReport](DiagnosticReport-DCISResectionReport.html)
- [Macroscopy Grouper](Observation-DCISResectionMacroscopicGrouper.html)
- [Diagnostic Conclusion Grouper](Observation-DCISResectionDiagnosticConclusionGrouper.html)
- [Composition](Composition-DCISResectionComposition.html)
