// Patient 1 - erhält InvasiveCarcinomaResection (Lumpektomie) und LymphNodeSpecimens (Sentinel-LK)
Instance: Patient1
InstanceOf: Patient
Usage: #example
Title: "Patientin 1 - Invasives Karzinom und Sentinel-Lymphknoten"
Description: "Patientin mit invasivem Mammakarzinom, erhält brusterhaltende Operation mit Sentinel-Lymphknoten-Biopsie"
* identifier.system = "http://example.hospital.de/patient-ids"
* identifier.value = "PAT-2024-101"
* name
  * given[0] = "Anna"
  * family = "Mueller"
* gender = #female
* birthDate = "1962-04-20"

// Patient 2 - erhält NeoadjuvantTherapyResection (Mastektomie nach neoadjuvanter Chemotherapie)
Instance: Patient2
InstanceOf: Patient
Usage: #example
Title: "Patientin 2 - Neoadjuvante Therapie und Mastektomie"
Description: "Patientin mit triple-negativem Mammakarzinom, erhält Mastektomie nach neoadjuvanter Chemotherapie mit pathologischer Komplettremission"
* identifier.system = "http://example.hospital.de/patient-ids"
* identifier.value = "PAT-2024-102"
* name
  * given[0] = "Maria"
  * family = "Schmidt"
* gender = #female
* birthDate = "1975-09-11"

// Patient 3 - erhält DCISResection (Wide Local Excision)
Instance: Patient3
InstanceOf: Patient
Usage: #example
Title: "Patientin 3 - DCIS Resektion"
Description: "Patientin mit duktalem Carcinoma in situ, erhält Wide Local Excision"
* identifier.system = "http://example.hospital.de/patient-ids"
* identifier.value = "PAT-2024-103"
* name
  * given[0] = "Petra"
  * family = "Weber"
* gender = #female
* birthDate = "1958-12-03"

// Patient 4 - erhält CoreNeedleBiopsy (Stanzbiopsie Mamma links)
Instance: Patient4
InstanceOf: Patient
Usage: #example
Title: "Patientin 4 - Stanzbiopsie Mamma"
Description: "Patientin mit Herdbefund linke Brust (BI-RADS 4b), erhält US-gestützte Stanzbiopsie"
* identifier.system = "http://example.hospital.de/patient-ids"
* identifier.value = "PAT-2025-105"
* name
  * given[0] = "Sabine"
  * family = "Becker"
* gender = #female
* birthDate = "1971-03-15"
