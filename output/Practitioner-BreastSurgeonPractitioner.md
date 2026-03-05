# Senologe - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Senologe**

## Example Practitioner: Senologe

**identifier**: `http://example.hospital.de/practitioner-ids`/GYN-001

**name**: Thomas Richter 

### Qualifications

| | |
| :--- | :--- |
| - | **Code** |
| * | Gynecology |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "BreastSurgeonPractitioner",
  "identifier" : [{
    "system" : "http://example.hospital.de/practitioner-ids",
    "value" : "GYN-001"
  }],
  "name" : [{
    "family" : "Richter",
    "given" : ["Thomas"],
    "prefix" : ["Prof. Dr."]
  }],
  "qualification" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "394586005",
        "display" : "Gynecology"
      }]
    }
  }]
}

```
