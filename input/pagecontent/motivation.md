This Implementation Guide is intended as a practical, reusable foundation for interoperable reporting of breast cancer pathology information across different clinical systems and projects. It is designed to be useful both for routine clinical integration and for research and innovation projects (e.g. EU-funded initiatives, AI/LLM pilots, and precision oncology workflows).

### Test data for senders and receivers

A central goal of this IG is to provide realistic, well-structured **test data** that can be used both by sending and receiving systems.

- Example datasets for testing the end-to-end exchange of pathology reports (core needle biopsy, surgical resection, lymph node specimens).
- Consistent data for validating implementations across different vendor systems and platforms.
- Shared reference examples that can be used in connectathons / projectathons and bilateral testing.

### Basis for LLM-based extraction from free text

The IG and its example data aim to support the **extraction of structured data from narrative reports**, including LLM-based approaches.

- Example pathology reports with corresponding structured representations.
- Clear mapping between narrative text, coded concepts and profile elements.
- A reusable corpus for benchmarking models that extract histological type, grade, biomarkers (ER, PR, HER2, Ki-67), TNM staging or margin status from free text.

### Reference dataset for EU and research projects

The examples in this IG are designed to be a **reference dataset** that can be reused in research and innovation contexts.

- Common test cases for EU-funded projects and cross-border collaborations.
- A stable reference for comparing different implementation strategies or toolchains.
- A documented dataset that can be cited in project deliverables and publications.

### Foundation for further profiling

The IG is also meant as a **basis for more specific profiling** in related domains.

- Starting point for tumour-entity-specific extensions (e.g. other gynaecological malignancies).
- Reusable structures for integrating additional data elements (e.g. quality-of-life assessments, PROMs).
- Profile patterns that can be tightened or relaxed depending on project scope and regulatory context.

### Harmonisation of pathology and oncology specifications

One important motivation is the **harmonisation of different specifications** that currently coexist in oncology and pathology.

- Alignment of pathology reporting structures (e.g. ICCR datasets, structured cancer checklists) with oncologic documentation and tumour board requirements.
- Shared semantics for key concepts such as diagnosis, stage, grading, biomarkers and surgical margins.
- Reduction of duplicate modelling efforts and inconsistent data definitions across siloed initiatives.

### Use in connectathons and projectathons

The IG is intended to be used actively in **interoperability events** (projectathons, connectathons, vendor workshops).

- Ready-to-use test bundles that can be shared with system vendors (e.g. HIS, LIS, oncology platforms).
- Realistic scenarios for end-to-end workflows (pathology → gynaecology/senology → tumour board).
- Common reference cases to discuss deviations, edge cases and extensions.

### Stakeholders and potential adopters

This IG is explicitly designed to be shown and discussed with key clinical and methodological stakeholders:

- Gynaecologists and senologists (e.g. at certified breast centres) who are responsible for clinical decision-making and breast cancer pathways.
- Pathologists who produce structured and narrative reports and are central to staging, grading and biomarker assessment.
- Groups involved in national guideline development and standardisation (e.g. clinical societies, guideline panels, Bundesverband Deutscher Pathologen).
- Molecular pathology, molecular tumour boards and precision oncology teams, ideally using **the same subject** across classic histopathology, molecular findings and clinical decisions.

By providing a coherent data model, realistic test data and clear clinical motivation, this IG aims to serve as a bridge between technical interoperability, clinical practice and future-oriented use cases such as AI-assisted report processing and precision oncology.
