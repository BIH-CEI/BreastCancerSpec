// Pathologist - gemeinsam für alle Befunde
Instance: PathologistPractitioner
InstanceOf: Practitioner
Usage: #example
Title: "Pathologin"
Description: "Durchführende Pathologin für alle pathologischen Befunde"
* identifier.system = "http://example.hospital.de/practitioner-ids"
* identifier.value = "PATH-001"
* name
  * prefix[0] = "Dr."
  * given[0] = "Elisabeth"
  * family = "Hoffmann"
* qualification
  * code = $sct#394595002 "Pathology"

// Breast Surgeon - gemeinsam für alle Befunde
Instance: BreastSurgeonPractitioner
InstanceOf: Practitioner
Usage: #example
Title: "Senologe"
Description: "Durchführender Gynäkologe/Senologe für alle operativen Eingriffe"
* identifier.system = "http://example.hospital.de/practitioner-ids"
* identifier.value = "GYN-001"
* name
  * prefix[0] = "Prof. Dr."
  * given[0] = "Thomas"
  * family = "Richter"
* qualification
  * code = $sct#394586005 "Gynecology"
