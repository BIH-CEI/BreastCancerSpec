### Lymph Node Specimens

This scenario models a **sentinel lymph node biopsy** from a 62-year-old female patient (Anna Mueller), performed during breast-conserving surgery for invasive carcinoma.

#### Clinical Setting
- Invasive carcinoma NST, upper outer quadrant, right breast (pT1c)
- Sentinel lymph node biopsy for axillary staging
- Patent blue and Tc-99m marking

#### Specimen Hierarchy

| Level | Instance | Description |
|-------|----------|-------------|
| Part | SLN 1 | Sentinel lymph node 1 (12 x 8 x 6 mm) |
| Part | SLN 2 | Sentinel lymph node 2 (10 x 7 x 5 mm) |
| Block | Paraffinblock 01–02 | One block per sentinel node |
| Slide | HE-Schnitte 01–02 | H&E stained sections |
| Slide | IHC-Schnitte 01–02 | Panzytokeratin AE1/AE3 immunohistochemistry |

#### Key Findings
- **Lymph Nodes Examined:** 2
- **Lymph Nodes Positive:** 0
- **Isolated Tumor Cells (ITC):** Absent
- **Micrometastases:** Absent
- **Macrometastases:** Absent
- **Panzytokeratin IHC:** Negative
- **Extranodal Extension:** Not applicable
- **pN Stage:** pN0(sn)

#### Resources
- [ServiceRequest](ServiceRequest-LymphNodeSpecimensReportRequest.html)
- [DiagnosticReport](DiagnosticReport-LymphNodeSpecimensReport.html)
- [Macroscopy Grouper](Observation-LymphNodeSpecimensMacroscopicGrouper.html)
- [Diagnostic Conclusion Grouper](Observation-LymphNodeSpecimensDiagnosticConclusionGrouper.html)
- [Composition](Composition-LymphNodeSpecimensComposition.html)
