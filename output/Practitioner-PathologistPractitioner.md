# Pathologin - Breast Cancer Specification v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pathologin**

## Example Practitioner: Pathologin

**identifier**: `http://example.hospital.de/practitioner-ids`/PATH-001

**name**: Elisabeth Hoffmann 

### Qualifications

| | |
| :--- | :--- |
| - | **Code** |
| * | Pathology |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "PathologistPractitioner",
  "identifier" : [{
    "system" : "http://example.hospital.de/practitioner-ids",
    "value" : "PATH-001"
  }],
  "name" : [{
    "family" : "Hoffmann",
    "given" : ["Elisabeth"],
    "prefix" : ["Dr."]
  }],
  "qualification" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "394595002",
        "display" : "Pathology"
      }]
    }
  }]
}

```
