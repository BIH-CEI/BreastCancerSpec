This page lists all `Observation.code` elements used across the scenarios along with their value types and possible answers. For coded answers (`valueCodeableConcept`), the known codes are listed in separate tables below.

**Abbreviations:** CNB = Core Needle Biopsy, BET = Breast-Conserving Resection (*brusterhaltende Therapie*), SLN = Sentinel Lymph Node Specimen, INT = Integrated Report (BET + SLN)

Observations that carry `Observation.component` are shown with their components as indented rows (↳). Components are not standalone Observations; they are part of the parent resource.

---

### Diagnoses and Differential Diagnoses

Diagnostic spectrum of breast pathology according to the WHO Classification of Breast Tumours (5th edition, 2019). Of these entities, only invasive carcinoma NST is instantiated in the examples.

#### Malignant Diagnoses

| Diagnosis | ICD-O-3 | SCT Disorder | SCT Morphology |
|---|---|---|---|
| Invasive carcinoma of no special type (NST) | 8500/3 | 408643008 | 82711006 |
| Invasive lobular carcinoma | 8520/3 | 278054005 | 89740008 |
| Tubular carcinoma | 8211/3 | — | 4631006 |
| Cribriform carcinoma | 8201/3 | — | 30156004 |
| Mucinous carcinoma | 8480/3 | 444712000 | 72495009 |
| Invasive micropapillary carcinoma | 8507/3 | — | 703578005 |
| Carcinoma with apocrine differentiation | 8401/3 | — | 57141000 |
| Metaplastic carcinoma | 8575/3 | 763479005 | 128705006 |
| Adenoid cystic carcinoma | 8200/3 | — | 11671000 |
| Ductal carcinoma in situ (DCIS) | 8500/2 | 109889007 | 1162814007 |
| Paget disease of the nipple | 8540/3 | 403946000 | 2985005 |
| Malignant phyllodes tumour | 9020/3 | 254844000 | 87913009 |

**Notes:**
- *SCT Disorder* = breast-specific SNOMED CT concept (Site+Morphology), *SCT Morphology* = morphology only
- Tubular, cribriform, micropapillary and apocrine carcinoma: no breast-specific disorder code in SCT INT; post-coordination may be required. Adenoid cystic carcinoma is only covered by the group concept `716593008` (Carcinoma of salivary gland type of breast)
- Invasive carcinoma NST: alternatively `1259590008` (Primary infiltrating duct carcinoma of breast); `82711006` "Infiltrating duct carcinoma" is the historical synonym for NST
- DCIS is listed as malignant because it is staged (pTis), analogous to IDC-P in the ProstateCancerSpec; classic LCIS is a risk lesion (WHO: lobular neoplasia) and is listed below
- Further histologic types are listed in [VS ICD-O-3 Morphology](#vs-icdo3)

<a id="pre-malignant"></a>
#### Pre-malignant / Borderline Entities

| Entity | ICD-O-3 | SNOMED CT |
|---|---|---|
| Atypical ductal hyperplasia (ADH) | — | SCT 427785007 |
| Flat epithelial atypia (FEA) | — | SCT 860895001 |
| Atypical lobular hyperplasia (ALH) | — | SCT 450697004 |
| Lobular carcinoma in situ (LCIS), classic | 8520/2 | SCT 109888004 |
| Borderline phyllodes tumour | 9020/1 | SCT 427942006 |

#### Benign Diagnoses

| Diagnosis | ICD-O-3 | SNOMED CT |
|---|---|---|
| Fibroadenoma | 9010/0 | SCT 254845004 |
| Intraductal papilloma | 8503/0 | SCT 254848002 |
| Benign phyllodes tumour | 9020/0 | SCT 720344007 |
| Usual ductal hyperplasia (UDH) | — | SCT 472905007 |
| Radial scar | — | SCT 390787006 |
| Sclerosing adenosis | — | SCT 50916005 (morphology) |
| Fibrocystic change | — | SCT 367647000 (morphology) |
| Fat necrosis | — | SCT 21381006 |

**Notes:**
- Sclerosing adenosis and fibrocystic change: no breast-specific disorder code in SCT INT, the morphology is given instead. `23260002` (Fibroadenosis of breast) is modelled with the morphology "Dysplasia" and is not an equivalent
- Radial scar: lesions larger than 1 cm (complex sclerosing lesion) are `390788001`
- ICD-10-GM (required by the MII Oncology module): `C50.-` invasive carcinoma (subcode by quadrant, `C50.5` in the examples), `D05.1` DCIS, `D05.0` LCIS, `D24` benign neoplasms, `N60.-` benign mammary dysplasia

---

### Clinical Context (`ServiceRequest.supportingInfo`)

Information supplied by the requesting clinician. These are not part of a report section and carry no `category[section-type]`. A grouper for clinical information is deliberately absent — MII places this content on the ServiceRequest.

| Observation.code | Display | value[x] | Value Domain | Scenario |
|---|---|---|---|---|
| SCT 415076002 | Personal history of primary malignant neoplasm of breast | valueCodeableConcept | text only | BET, INT |
| LOINC 81167-9 | Cancer treatment --preoperative | valueCodeableConcept | → [VS Yes / No / Unknown](#vs-yes-no-unknown) | BET, INT |
| SCT 396361002 | Lesion size, largest dimension | valueQuantity | mm | BET, INT |
| SCT 836381000000102 | Insertion of marker into breast using plain X-ray guidance | valueCodeableConcept | text only | BET, INT |
| SCT 80865008:363702006=185008008 | Specimen mammography : Has focus = Medical reports sent | valueCodeableConcept | → [VS Present / Absent](#vs-present-absent) | BET, INT |
| SCT 76522002 | Diathesis, function | valueCodeableConcept | → [VS Yes / No / Unknown](#vs-yes-no-unknown) | BET, INT |

**Notes:**
- `80865008:363702006=185008008` is a post-coordinated expression stating that the specimen radiograph was supplied with the request.
- The B-classification of the preceding core needle biopsy (`CoreNeedleBiopsyInterpretation`, SCT `271935000`, see [General](#general)) is also referenced as `supportingInfo` in BET and INT.

---

### Macroscopy

Grouper: `MII_PR_Patho_Macroscopic_Grouper`, LOINC 22634-0.

| Observation.code | Display | value[x] | Value Domain | Scenario |
|---|---|---|---|---|
| LOINC 44619-5 | Length of tissue core(s) | valueQuantity | mm | CNB |
| LOINC 44652-6 | Total number of cores in Tissue core | valueQuantity | {count} | CNB |
| LOINC 44629-4 | Specimen size.maximum dimension in Breast tumor | valueQuantity | mm | BET, INT |
| LOINC 44630-2 | Specimen size additional dimension 1 in Breast tumor | valueQuantity | mm | BET, INT |
| LOINC 44631-0 | Specimen size additional dimension 2 in Breast tumor | valueQuantity | mm | BET, INT |
| LOINC 29638-4 | Weight of Tissue | valueQuantity | g | BET, INT |
| SCT 3100001000004109 | Number of paraffin embedded tissue blocks examined from excised specimen | valueQuantity | {blocks} | BET, CNB, INT |
| SCT 364109001 | Length of lymph node in excised specimen | valueQuantity | mm | SLN, INT |
| LOINC 85347-3 | Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy | valueQuantity | {count} | SLN |
| LOINC 92833-3 | Lymph nodes examined [#] in Cancer specimen by Light microscopy | valueQuantity | {count} | SLN |

**Notes:**
- Quadrant, clock position and distance from the nipple are not Observations. Since MII Patho 2027 they are carried on the BodyStructure referenced from `Specimen.collection.bodySite`; see [Specimen Localisation](#specimen-localisation).
- In the SLN report the lymph node counts are also recorded macroscopically (`85347-3`, `92833-3`); the same codes reappear in the diagnostic conclusion.
- `364109001` is recorded once per lymph node; the nodes are distinguished by `Observation.specimen`. The full macroscopic description (all three dimensions, dye marking) is kept in `Observation.note`.

---

### Intraoperative Assessment

Grouper: `MII_PR_Patho_Intraoperative_Grouper`, LOINC 83321-0. Used for the frozen-section examination of the sentinel lymph nodes.

| Observation.code | Display | value[x] | Value Domain | Scenario |
|---|---|---|---|---|
| SCT 1268302004 | Presence of metastatic neoplasm in lymph node in excised tissue specimen | valueCodeableConcept | → [VS Present / Absent](#vs-present-absent) | INT |

**Note:** `Observation.method` = SCT 817011007 "Tissue frozen section technique" distinguishes the intraoperative result from the definitive paraffin-section finding.

---

### Diagnostic Conclusion

Grouper: `MII_PR_Patho_Diagnostic_Conclusion_Grouper`, LOINC 22637-3. The microscopic description itself is carried as narrative text; no Microscopic Grouper is instantiated.

#### General

| Observation.code | Display | value[x] | Value Domain | Scenario |
|---|---|---|---|---|
| LOINC 29306-8 + SCT 2620001000004108 | Surgery procedure | valueCodeableConcept | → [VS Surgical Procedure](#vs-surgical-procedure) | BET, INT |
| LOINC 66746-9 | Specimen type | valueCodeableConcept | → [VS Specimen Type](#vs-specimen-type) | BET, INT |
| SCT 384727002 | Specimen laterality | valueCodeableConcept | → [VS Laterality](#vs-laterality) | BET, INT |
| LOINC 20228-3 | Anatomic part Laterality | valueCodeableConcept | → [VS Laterality](#vs-laterality) | SLN, INT |
| LOINC 85298-8 | Body structure included in specimen [Anatomy] in Specimen | valueCodeableConcept | → [VS Adjacent / Included Structure](#vs-included-structure) | BET, INT |
| SCT 1157128007 | Qualitative distribution of primary malignant neoplasm of breast in excised breast specimen | valueCodeableConcept | → [VS Focality](#vs-focality) | BET, INT |
| SCT 271935000 | Biopsy interpretation | valueCodeableConcept | → [VS B-Classification](#vs-b-classification) | CNB |
| SCT 80865008 | Specimen mammography | valueCodeableConcept | → [VS Present / Absent](#vs-present-absent) | CNB |

#### Tumour Type, Size and Grading

| Observation.code | Display | value[x] | Value Domain | Scenario |
|---|---|---|---|---|
| LOINC 59847-4 | Histology and Behavior ICD-O-3 Cancer | valueCodeableConcept | → [VS ICD-O-3 Morphology](#vs-icdo3) | CNB |
| LOINC 44638-5 + SCT 1660001000004100 | Histologic type in Breast tumor | valueCodeableConcept | → [VS ICD-O-3 Morphology](#vs-icdo3) | BET, INT |
| LOINC 33731-1 | Histology type in Cancer specimen Narrative | valueString | Free text | BET, CNB, INT |
| LOINC 44635-1 + SCT 200001000004104 | Invasive component size.maximum dimension [Length] in Breast tumor | valueQuantity | mm | BET, INT |
| LOINC 33728-7 | Size.maximum dimension in Tumor | valueQuantity | mm | BET, INT |
| LOINC 44648-4 + SCT 372276001 | Histologic grade [Score] in Breast cancer specimen by Nottingham | valueCodeableConcept | → [VS Histologic Grade](#vs-grade) | BET, CNB, INT |
| SCT 1287461000 | Nottingham total score of primary malignant neoplasm of breast | valueQuantity | {score} 3–9 | BET, CNB, INT |
| ↳ LOINC 85321-8 | Glandular differentiation [Score] in Breast cancer specimen by Nottingham | valueQuantity | {score} 1–3 | — |
| ↳ LOINC 44645-0 | Nuclear pleomorphism in Breast tumor by Nottingham | valueQuantity | {score} 1–3 | — |
| ↳ LOINC 85300-2 | Mitotic rate [Score] in Breast cancer specimen by Nottingham | valueQuantity | {score} 1–3 | — |
| SCT 406094009 | Number of mitoses per 10 high power fields | valueQuantity | {HPF} | BET, INT |

**Note:** The three Nottingham sub-scores are components of the summary score, not standalone Observations. The grade itself references the summary score via `derivedFrom`.

#### DCIS and Microcalcification

| Observation.code | Display | value[x] | Value Domain | Scenario |
|---|---|---|---|---|
| LOINC 85336-6 | DCIS intraductal extension in Breast cancer specimen Qualitative by Light microscopy | valueCodeableConcept | → [VS EIC](#vs-eic) | BET, INT |
| SCT 2890001000004108 | Nuclear grade of ductal carcinoma in situ of breast | valueCodeableConcept | → [VS DCIS Nuclear Grade](#vs-dcis-grade) | BET, INT |
| LOINC 85302-8 + SCT 3400001000004108 | Growth pattern of DCIS [Type] in Breast cancer specimen by Light microscopy | valueCodeableConcept | → [VS DCIS Architecture](#vs-dcis-architecture) | BET, INT |
| LOINC 85340-8 | DCIS necrosis [Type] in Breast cancer specimen by Light microscopy | valueCodeableConcept | → [VS DCIS Necrosis](#vs-dcis-necrosis) | BET, INT |
| SCT 1240404008 | Presence of microcalcification in excised breast specimen | valueCodeableConcept | → [VS Microcalcification](#vs-microcalcification) | BET, CNB, INT |
| SCT 12747003 | Microcalcification, calcified structure | valueString | Free text | CNB |

**Note:** `1240404008` states whether relevant microcalcification is present; `12747003` carries the radiological correlation as free text. They are distinct findings, not duplicate coding.

#### Invasion and Resection Margins

| Observation.code | Display | value[x] | Value Domain | Scenario |
|---|---|---|---|---|
| LOINC 59544-7 + SCT 371512006 | Lymph-vascular invasion Cancer specimen | valueCodeableConcept | → [VS Present / Absent](#vs-present-absent) | BET, INT |
| LOINC 85322-6 + SCT 396645007 + SCT 3280001000004106 | Adjacent structure invaded by tumor [Anatomy] in Breast cancer specimen by Light microscopy | valueCodeableConcept | → [VS Tumour Extent](#vs-tumour-extent) | BET, INT |
| LOINC 44669-0 + SCT 371488000 + SCT 1240395000 | Margin involvement in Breast tumor | valueCodeableConcept | → [VS Margin Status](#vs-margin-status) | BET, INT |
| LOINC 44672-4 + SCT 373120008 | Invasive carcinoma uninvolved margin distance closest [Length] in Breast tumor | valueQuantity | mm | BET, INT |
| LOINC 44674-0 + SCT 170001000004107 | Invasive carcinoma uninvolved margin closest in Breast tumor | valueCodeableConcept | → [VS Margin Location](#vs-margin-location) | BET, INT |
| LOINC 85334-1 + SCT 384705006 | Surgical margin DCIS involvement [Presence] in Breast cancer specimen by Light microscopy | valueCodeableConcept | → [VS Margin Status](#vs-margin-status) | BET, INT |
| LOINC 44673-2 | DCIS.uninvolved margin distance.closest in Breast tumor | valueQuantity | mm | BET, INT |

#### Biomarkers

Two modelling variants coexist. In the **core needle biopsy** the receptor status is a single Observation carrying percentage, staining intensity and score as components (Issue #44). In **BET** and the **integrated report** the same facts are still separate Observations. Both are shown; unifying them is open work.

| Observation.code | Display | value[x] | Value Domain | Scenario |
|---|---|---|---|---|
| LOINC 85337-4 + SCT 1234806008 | Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain | valueCodeableConcept | → [VS Positive / Negative](#vs-positive-negative) | CNB |
| ↳ LOINC 48018-6 | Gene studied [ID] | valueCodeableConcept | HGNC:3467 (ESR1) | — |
| ↳ LOINC 85329-1 | Cells.estrogen receptor/cells in Breast cancer specimen by Immune stain | valueQuantity | % | — |
| ↳ LOINC 85310-1 | Estrogen receptor fluorescence intensity [Type] in Breast cancer specimen by Immune stain | valueCodeableConcept | → [VS Staining Intensity](#vs-staining-intensity) | — |
| ↳ SCT 445104009 | Allred score for neoplasm | valueQuantity | {score} 0–8 | — |
| LOINC 85339-0 + SCT 1234806008 | Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain | valueCodeableConcept | → [VS Positive / Negative](#vs-positive-negative) | CNB |
| ↳ LOINC 48018-6 | Gene studied [ID] | valueCodeableConcept | HGNC:8910 (PGR) | — |
| ↳ LOINC 85325-9 | Cells.progesterone receptor/cells in Breast cancer specimen by Immune stain | valueQuantity | % | — |
| ↳ LOINC 85331-7 | Progesterone receptor fluorescence intensity [Type] in Breast cancer specimen by Immune stain | valueCodeableConcept | → [VS Staining Intensity](#vs-staining-intensity) | — |
| ↳ SCT 445104009 | Allred score for neoplasm | valueQuantity | {score} 0–8 | — |
| LOINC 16112-5 + SCT 1234806008 | Estrogen receptor [Interpretation] in Tissue | valueCodeableConcept | → [VS Positive / Negative](#vs-positive-negative) | BET, INT |
| ↳ LOINC 48018-6 | Gene studied [ID] | valueCodeableConcept | HGNC:3467 (ESR1) | — |
| LOINC 85329-1 + SCT 1234804006 + SCT 1234806008 | Cells.estrogen receptor/cells | valueQuantity | % | BET, INT |
| LOINC 85310-1 + SCT 1236874005 + SCT 1234806008 | Estrogen receptor staining intensity [Type] | valueCodeableConcept | → [VS Staining Intensity](#vs-staining-intensity) | BET, INT |
| LOINC 16113-3 + SCT 1234806008 | Progesterone receptor [Interpretation] in Tissue | valueCodeableConcept | → [VS Positive / Negative](#vs-positive-negative) | BET, INT |
| ↳ LOINC 48018-6 | Gene studied [ID] | valueCodeableConcept | HGNC:8910 (PGR) | — |
| LOINC 85325-9 + SCT 1234803000 + SCT 1234806008 | Cells.progesterone receptor/cells | valueQuantity | % | BET, INT |
| LOINC 85331-7 + SCT 1237278006 + SCT 1234806008 | Progesterone receptor staining intensity [Type] | valueCodeableConcept | → [VS Staining Intensity](#vs-staining-intensity) | BET, INT |
| LOINC 48676-1 | HER2 Ag [Interpretation] in Tissue | valueCodeableConcept | → [VS Positive / Negative](#vs-positive-negative) | BET, CNB, INT |
| ↳ LOINC 48018-6 | Gene studied [ID] | valueCodeableConcept | HGNC:3430 (ERBB2) | — |
| ↳ LOINC 85319-2 | HER2 Ag [Presence] in Breast cancer specimen by Immune stain | valueCodeableConcept | → [VS HER2 IHC Score](#vs-her2-ihc) | — |
| ↳ LOINC 85328-3 | Cells.HER2 uniform intense membrane staining/cells in Breast cancer specimen by Immune stain | valueQuantity | % | — |
| ↳ SCT 1363314005 | Presence of receptor tyrosine-protein kinase erbB-2 in primary malignant neoplasm of breast by in situ hybridization | valueCodeableConcept | → [VS Present / Absent](#vs-present-absent) | — |
| LOINC 85319-2 + SCT 3550001000004108 + SCT 1234806008 | HER2 Ag [Presence] by Immune stain | valueCodeableConcept | → [VS HER2 IHC Score](#vs-her2-ihc) | BET, INT |
| LOINC 85318-4 + SCT 1363314005 | ERBB2 gene duplication [Presence] in Breast cancer specimen by FISH | valueCodeableConcept | → [VS HER2 Amplification](#vs-her2-ish) | BET, INT |
| LOINC 85330-9 + SCT 1237281001 + SCT 1234806008 | Cells.Ki-67 nuclear Ag/cells in Breast cancer specimen by Immune stain | valueQuantity | % | BET, CNB, INT |
| ↳ LOINC 48018-6 | Gene studied [ID] | valueCodeableConcept | HGNC:7107 (MKI67) | — |

**Note:** `Observation.specimen` points to the respective immunostained slide, which links the finding to the antibody used via `Specimen.processing.additive`.

#### Lymph Nodes

| Observation.code | Display | value[x] | Value Domain | Scenario |
|---|---|---|---|---|
| LOINC 21877-6 | Surgery procedure for regional nodes at facility.YYY Cancer | valueCodeableConcept | → [VS Nodal Procedure](#vs-nodal-procedure) | SLN, INT |
| LOINC 85347-3 | Sentinel lymph nodes examined [#] | valueQuantity | {count} | SLN, INT |
| SCT 1264491009 | Number of sentinel lymph nodes containing metastatic neoplasm in excised specimen | valueQuantity | {count} | SLN, INT |
| LOINC 21894-1 | Regional lymph nodes examined [#] Specimen | valueQuantity | {count} | SLN, INT |
| LOINC 21893-3 | Regional lymph nodes positive [#] Specimen | valueQuantity | {count} | SLN, INT |
| LOINC 92833-3 | Lymph nodes examined [#] | valueQuantity | {count} | SLN, INT |
| LOINC 92831-7 | Lymph nodes with metastasis [#] in Cancer specimen | valueQuantity | {count} | SLN, INT |
| LOINC 85343-2 | Lymph nodes with macrometastases [#] in Cancer specimen by Light microscopy | valueQuantity | {count} | SLN, INT |
| LOINC 85344-0 | Lymph nodes with micrometastases [#] in Cancer specimen by Light microscopy | valueQuantity | {count} | SLN, INT |
| LOINC 85352-3 | Lymph nodes with isolated tumor cells [#] in Cancer specimen by Light microscopy | valueQuantity | {count} | SLN, INT |
| LOINC 85351-5 | Lymph node metastatic deposit.max dimension [Length] in Cancer specimen by Light microscopy | valueQuantity | mm | SLN, INT |
| LOINC 85350-7 | Extranodal extension of carcinoma [Presence] in Cancer specimen by Light microscopy | valueCodeableConcept | → [VS Present / Absent](#vs-present-absent) | SLN, INT |

#### Comment

| Observation.code | Display | value[x] | Value Domain | Scenario |
|---|---|---|---|---|
| LOINC 22638-1 | Pathology report comments [Interpretation] Narrative | valueString | Free text | BET, SLN, INT |

---

<a id="specimen-localisation"></a>
### Specimen Localisation (BodyStructure and Specimen.feature)

The tumour location is not an Observation. Following the MII Patho 2027 example `mii-exa-patho-left-breast-body-structure`, it is carried on a `BodyStructure` that the part specimen references via `Specimen.collection.bodySite.extension[bodyStructure]`. Specimen markings are carried in the R5 cross-version extension `Specimen.feature`. Used in BET, INT (BodyStructure and markings) and CNB (BodyStructure only, without `morphology`).

| Element | Code | Display |
|---|---|---|
| `Specimen.collection.bodySite` (coding) | SCT 33564002 | Structure of lower outer quadrant of breast |
| `BodyStructure.location` / `includedStructure.structure` | SCT 110502005 | Structure of lower outer quadrant of left breast |
| `BodyStructure.locationQualifier` / `includedStructure.laterality` | SCT 7771000 | Left |
| `BodyStructure.morphology` | SCT 82711006 | Infiltrating duct carcinoma |
| `bodyLandmarkOrientation.landmarkDescription` | SCT 24142002 | Nipple structure |
| `bodyLandmarkOrientation.clockFacePosition` | SCT 260335000 | 5 o'clock position |
| `bodyLandmarkOrientation.surfaceOrientation` | SCT 46053002 | Distal |
| `bodyLandmarkOrientation.distanceFromLandmark.value` | — | valueQuantity, mm |
| `Specimen.feature.type` (wire marking) | SCT 735083009 | Part of left breast |
| `Specimen.feature.type` (long thread) | SCT 3680001000004109 | Anterior surgical margin |
| `Specimen.feature.type` (two short threads) | SCT 880001000004108 | Distal surgical margin |

**Notes:**
- `Specimen.collection.bodySite` keeps the side-neutral quadrant code; the side and the detailed location come from the referenced BodyStructure.
- The lymph node specimens have no BodyStructure; the laterality is pre-coordinated in `Specimen.collection.bodySite` (SCT `739020002` "Lymph node group of left axilla") in both SLN and INT.

---

### TNM Staging

TNM is represented using **MII Oncology profiles**, not as Patho Findings:

| Profile | Observation.code | Description | Scenario |
|---|---|---|---|
| `mii-pr-onko-tnm-t-kategorie` | SCT 384625004 | pT category | BET, INT |
| `mii-pr-onko-tnm-n-kategorie` | SCT 277206009 / SCT 371494008 | N / pN category | SLN, INT |

Codes and ValueSets are defined in the [MII Oncology IG](https://simplifier.net/medizininformatikinitiative-modulonkologie) (CodeSystem `https://www.uicc.org/resources/tnm`).

The TNM Observations are **not** members of the Diagnostic Conclusion Grouper: its `hasMember` slicing checks every member against `mii-pr-patho-finding`, which the Oncology profiles do not satisfy. The TNM classification is stated in `DiagnosticReport.conclusion`.

**Note:** For the sentinel node finding (pN1mi(sn)), `Observation.value` follows the MII Oncology 2027 pattern: the UICC code `N1mi` in `coding[uicc]`, the SNOMED CT concept `1352620005` "Union for International Cancer Control pN1mi" in `coding[snomed-ct]`, and the `(sn)` suffix in the extension `mii-ex-onko-tnm-sn-suffix`. The more specific SNOMED CT concept `1356762006` "pN1mi(sn)" is not used, because the invariant `tnm-sct-uicc-konsistenz` requires the SNOMED CT display to contain the prefix and UICC code followed by a space.

---

### ValueSets (Known Codes)

Where a domain is not yet fully enumerated, this is stated explicitly. Only codes verified against the terminology server are listed.

#### VS Laterality

| Code | System | Display |
|---|---|---|
| 7771000 | SNOMED CT | Left (qualifier value) |
| 24028007 | SNOMED CT | Right (qualifier value) |
| 51440002 | SNOMED CT | Right and left (qualifier value) |

<a id="vs-present-absent"></a>
#### VS Present / Absent

| Code | System | Display |
|---|---|---|
| 52101004 | SNOMED CT | Present (qualifier value) |
| 2667000 | SNOMED CT | Absent (qualifier value) |

<a id="vs-yes-no-unknown"></a>
#### VS Yes / No / Unknown

| Code | System | Display |
|---|---|---|
| 373066001 | SNOMED CT | Yes (qualifier value) |
| 373067005 | SNOMED CT | No (qualifier value) |
| 261665006 | SNOMED CT | Unknown (qualifier value) |

<a id="vs-positive-negative"></a>
#### VS Positive / Negative

Used for hormone receptor status and HER2 overall status. LOINC answer lists: LL2038-9 belongs to `85337-4` / `85339-0` (receptor status, CNB), LL2009-0 to `85318-4` (ISH). `16112-5`, `16113-3` and `48676-1` have no LOINC answer list.

| Code | System | Display |
|---|---|---|
| LA6576-8 | LOINC | Positive |
| LA6577-6 | LOINC | Negative |
| LA11884-6 | LOINC | Indeterminate |
| LA11885-3 | LOINC | Equivocal |

**Note:** `Indeterminate` belongs to LL2038-9, `Equivocal` to LL2009-0.

<a id="vs-icdo3"></a>
#### VS ICD-O-3 Morphology (Breast)

Histologic types of breast tumours according to the **WHO Classification of Tumours, 5th edition (2019), Breast Tumours**. All codes are ICD-O-3.

**Source column:** `IG` = code used in the examples of this Implementation Guide · `WHO` = WHO 2019 type that is not currently instantiated here.

**BfArM Display** is the official German display of the ICD-O-3, second revision 2019, as provided by the MII terminology server. **SCT Morphology** gives the SNOMED CT morphologic abnormality, verified against SNOMED CT International Edition 20260701. Entries marked ⚠ are not an exact equivalent — see notes.

##### Invasive carcinoma

| Code | Type | SCT Morphology | BfArM Display (official) | Source |
|---|---|---|---|---|
| 8500/3 | Invasive carcinoma of no special type (NST) | 82711006 Infiltrating duct carcinoma | Invasives duktales Karzinom o.n.A. | IG |
| 8520/3 | Invasive lobular carcinoma | 89740008 Lobular carcinoma | Lobuläres Karzinom o.n.A. | WHO |
| 8522/3 | Mixed ductal and lobular carcinoma | 35232005 Infiltrating duct and lobular carcinoma | Invasives duktales und lobuläres Karzinom | WHO |
| 8211/3 | Tubular carcinoma | 4631006 Tubular adenocarcinoma | Tubuläres Adenokarzinom | WHO |
| 8201/3 | Cribriform carcinoma | 30156004 Cribriform carcinoma | Kribriformes Karzinom o.n.A. | WHO |
| 8480/3 | Mucinous carcinoma | 72495009 Mucinous adenocarcinoma | Muzinöses Adenokarzinom | WHO |
| 8507/3 | Invasive micropapillary carcinoma | 703578005 Invasive micropapillary carcinoma of breast | Invasives mikropapilläres Mammakarzinom | WHO |
| 8401/3 | Carcinoma with apocrine differentiation | 57141000 Apocrine adenocarcinoma | Apokrines Adenokarzinom | WHO |
| 8575/3 | Metaplastic carcinoma | 128705006 Metaplastic carcinoma | Metaplastisches Karzinom o.n.A. | WHO |

##### Rare and salivary gland-type tumours

| Code | Type | SCT Morphology | BfArM Display (official) | Source |
|---|---|---|---|---|
| 8200/3 | Adenoid cystic carcinoma | 11671000 Adenoid cystic carcinoma | Adenoid-zystisches Karzinom | WHO |
| 8502/3 | Secretory carcinoma | ⚠ 41919003 Juvenile carcinoma of the breast | Sekretorisches Mammakarzinom | WHO |

##### Papillary neoplasms

| Code | Type | SCT Morphology | BfArM Display (official) | Source |
|---|---|---|---|---|
| 8503/3 | Invasive papillary carcinoma | 64524002 Intraductal papillary adenocarcinoma with invasion | Intraduktales papilläres Adenokarzinom mit Invasion | WHO |
| 8509/3 | Solid papillary carcinoma, invasive | 703594003 Solid papillary carcinoma with invasion | Solides papilläres Karzinom mit Invasion | WHO |
| 8509/2 | Solid papillary carcinoma in situ | 703546002 Solid papillary carcinoma in situ | Solides papilläres Carcinoma in situ | WHO |
| 8504/2 | Encapsulated papillary carcinoma | 703545003 Encapsulated papillary carcinoma | Abgekapseltes papilläres Karzinom | WHO |
| 8504/3 | Encapsulated papillary carcinoma with invasion | 703547006 Encapsulated papillary carcinoma with invasion | Abgekapseltes papilläres Karzinom mit Invasion | WHO |

##### Neuroendocrine neoplasms

| Code | Type | SCT Morphology | BfArM Display (official) | Source |
|---|---|---|---|---|
| 8240/3 | Neuroendocrine tumour | 1286768001 Well-differentiated neuroendocrine tumor | Neuroendokriner Tumor o.n.A. | WHO |
| 8246/3 | Neuroendocrine carcinoma | 1286767006 Neuroendocrine carcinoma | Neuroendokrines Karzinom o.n.A. | WHO |

##### In situ carcinoma and Paget disease

| Code | Type | SCT Morphology | BfArM Display (official) | Source |
|---|---|---|---|---|
| 8500/2 | Ductal carcinoma in situ (DCIS) | 1162814007 Non-infiltrating intraductal carcinoma | Nichtinfiltrierendes intraduktales Karzinom o.n.A. | WHO |
| 8520/2 | Lobular carcinoma in situ (LCIS) | 77284006 Lobular carcinoma in situ | Lobuläres Carcinoma in situ o.n.A. | WHO |
| 8540/3 | Paget disease of the nipple | 2985005 Paget's disease, mammary | M. Paget der Brust | WHO |

**Notes:**
- **8500/3** — The coding carries the official BfArM display; "Invasives duktales Karzinom (NST)" is kept as `CodeableConcept.text`.
- The histologic type is coded with SCT `82711006` in BET (`44638-5`) and CNB (`59847-4`, although this LOINC code asks for ICD-O-3) and with ICD-O-3 `8500/3` in INT (`44638-5`). Unifying them is open work.
- **8502/3** — SNOMED CT has no morphologic abnormality named "secretory carcinoma of breast". `41919003 Juvenile carcinoma of the breast` is the historic synonym. `734058001 Mammary analog secretory carcinoma` is the salivary gland entity and is not used.
- **8500/2** — `86616005 Intraductal carcinoma, noninfiltrating` is inactive; `1162814007` is the active concept (also used in the ProstateCancerSpec for IDC-P).
- **8510/3 (medullary carcinoma)** is valid in ICD-O-3 but is no longer a separate type in WHO 2019 (it is a pattern of NST) and is therefore not listed.
- **8240/3, 8246/3** — `55937004 Neuroendocrine tumor` is inactive; the WHO-aligned concepts `1286768001` and `1286767006` are used instead.
- Precursor lesions without a malignant ICD-O-3 code (e.g. atypical ductal hyperplasia, flat epithelial atypia) are not listed here; see [Pre-malignant / Borderline Entities](#pre-malignant).

<a id="vs-grade"></a>
#### VS Histologic Grade

The examples use the generic WHO differentiation grades. Nottingham-specific concepts exist and may be preferable in a future revision.

| Code | System | Display |
|---|---|---|
| 1155701009 | SNOMED CT | G1: Well differentiated histologic grade |
| 1155703007 | SNOMED CT | G2: Moderately differentiated histologic grade |
| 1155704001 | SNOMED CT | G3: Poorly differentiated histologic grade |

**Alternative (Nottingham-specific):** `1287024003` grade 1, `1287025002` grade 2, `1287026001` grade 3.

<a id="vs-dcis-grade"></a>
#### VS DCIS Nuclear Grade

| Code | System | Display |
|---|---|---|
| 369781009 | SNOMED CT | DCIS nuclear pleomorphism, grade 1: monotonous nuclei, 1.5 - 2.0 RBC diameters, with finely dispersed chromatin and only occasional nucleoli |
| 369782002 | SNOMED CT | DCIS nuclear pleomorphism, grade 2: neither nuclear grade 1 nor nuclear grade 3 |
| 369783007 | SNOMED CT | DCIS nuclear pleomorphism, grade 3: Markedly pleomorphic nuclei, usually >2.5 RBC diameters, with coarse chromatin and multiple nucleoli |

#### VS DCIS Architecture

| Code | System | Display |
|---|---|---|
| 443987001 | SNOMED CT | Cribriform tumor pattern |
| 443336007 | SNOMED CT | Comedo tumor pattern |
| 443715007 | SNOMED CT | Micropapillary tumor pattern |

**Note:** Displays are the preferred terms; the examples use the fully specified name (e.g. "Cribriform neoplasm pattern (finding)"), following the IG convention. For solid and papillary growth, the same hierarchy (`370111000` Tumor configuration) only offers the macroscopic configuration concepts `369757002` "Solid tumor configuration" and `369756006` "Papillary tumor configuration"; whether they are suitable for DCIS architecture is open. The domain is not exhaustive.

#### VS DCIS Necrosis

LOINC answer list LL4385-2.

| Code | System | Display |
|---|---|---|
| LA11902-6 | LOINC | Not identified |
| LA27234-6 | LOINC | Present, focal (small or single cell necrosis) |
| LA27235-3 | LOINC | Present, central (expansive "comedo" necrosis) |

<a id="vs-eic"></a>
#### VS Extensive Intraductal Component (EIC)

LOINC answer list LL4392-8.

| Code | System | Display |
|---|---|---|
| LA27259-3 | LOINC | No DCIS present |
| LA27260-1 | LOINC | DCIS present without extensive intraductal component (EIC) |
| LA27261-9 | LOINC | DCIS present with extensive intraductal component (EIC) |
| LA27262-7 | LOINC | Only DCIS is present after neoadjuvant therapy |

#### VS Microcalcification

| Code | System | Display |
|---|---|---|
| LA27826-9 | LOINC | Microcalcifications present in DCIS |
| 2667000 | SNOMED CT | Absent (qualifier value) |

#### VS Staining Intensity

Two code systems are in use depending on the scenario: LOINC answer list LL4358-9 in the core needle biopsy, SNOMED CT severity modifiers in BET and INT.

| Code | System | Display |
|---|---|---|
| LA13034-6 | LOINC | Weak |
| LA6751-7 | LOINC | Moderate |
| LA14974-2 | LOINC | Strong |
| 24484000 | SNOMED CT | Severe (severity modifier) |
| 6736007 | SNOMED CT | Moderate (severity modifier) |

**Note:** The parallel use of LOINC answers and SNOMED CT severity modifiers should be unified; the LOINC answer list is complete, the SNOMED CT side only lists the values used in the examples.

<a id="vs-her2-ihc"></a>
#### VS HER2 IHC Score

LOINC answer list LL4396-9.

| Code | System | Display |
|---|---|---|
| LA6111-4 | LOINC | 0 |
| LA11841-6 | LOINC | 1+ |
| LA11842-4 | LOINC | 2+ |
| LA11843-2 | LOINC | 3+ |
| LA11884-6 | LOINC | Indeterminate |

<a id="vs-her2-ish"></a>
#### VS HER2 Amplification (ISH)

| Code | System | Display |
|---|---|---|
| 1162602001 | SNOMED CT | Human epidermal growth factor receptor 2 gene amplification detected (finding) |
| 705105000 | SNOMED CT | Human epidermal growth factor 2 gene amplification not detected (finding) |

**Note:** In the core needle biopsy the ISH result is a component of the HER2 overall status coded with `1363314005` "Presence of …". That observable takes [Present / Absent](#vs-present-absent) as its value (Issue #44).

#### VS Margin Status

| Code | System | Display |
|---|---|---|
| 52101004 | SNOMED CT | Present (qualifier value) — margin involved |
| 2667000 | SNOMED CT | Absent (qualifier value) — margin not involved (R0) |

#### VS Margin Location

| Code | System | Display |
|---|---|---|
| 255549009 | SNOMED CT | Anterior (qualifier value) |
| 255551008 | SNOMED CT | Posterior (qualifier value) |
| 264217000 | SNOMED CT | Superior (qualifier value) |
| 261089000 | SNOMED CT | Inferior (qualifier value) |
| 255561001 | SNOMED CT | Medial (qualifier value) |
| 49370004 | SNOMED CT | Lateral (qualifier value) |

#### VS Focality

| Code | System | Display |
|---|---|---|
| 261034003 | SNOMED CT | Unifocal (qualifier value) |
| 524008 | SNOMED CT | Multifocal (qualifier value) |
| 255206009 | SNOMED CT | Multicentric (qualifier value) |

**Note:** In the examples, `1157128007` currently carries a text-only value; it should be bound to this ValueSet.

#### VS Tumour Extent

| Code | System | Display |
|---|---|---|
| 372288004 | SNOMED CT | Local tumor invasion (finding) |

<a id="vs-included-structure"></a>
#### VS Adjacent / Included Structure

| Code | System | Display |
|---|---|---|
| 39937001 | SNOMED CT | Skin structure (body structure) |
| 24142002 | SNOMED CT | Nipple structure (body structure) |
| 60005003 | SNOMED CT | Pectoralis major muscle structure (body structure) |

#### VS Specimen Type

| Code | System | Display |
|---|---|---|
| 309546004 | SNOMED CT | Lumpectomy breast specimen (specimen) |
| 309547008 | SNOMED CT | Segmentectomy breast specimen (specimen) |
| 122595009 | SNOMED CT | Specimen from breast obtained by total mastectomy (specimen) |
| 309058007 | SNOMED CT | Breast tru-cut biopsy specimen (specimen) |

#### VS Surgical Procedure

| Code | System | Display |
|---|---|---|
| 237371007 | SNOMED CT | Wide local excision of breast lesion (procedure) |
| 172043006 | SNOMED CT | Simple mastectomy (procedure) |

**Note:** The domain is not exhaustive (e.g. skin-sparing or nipple-sparing mastectomy).

#### VS Nodal Procedure

| Code | System | Display |
|---|---|---|
| 396487001 | SNOMED CT | Sentinel lymph node biopsy (procedure) |
| 234262008 | SNOMED CT | Excision of axillary lymph node (procedure) |

**Note:** `393068005 Block dissection of axillary lymph nodes` is inactive and not used.

<a id="vs-b-classification"></a>
#### VS B-Classification (NHSBSP)

| Code | System | Display |
|---|---|---|
| 10179008 | SNOMED CT | Invasive (qualifier value) — B5b |

**Note:** B1 to B5a are not yet represented as codes. The category label is currently carried in `Observation.value.text`.
