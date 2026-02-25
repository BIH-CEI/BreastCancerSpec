Instance: CoreNeedleBiopsyEncounter
InstanceOf: Encounter
Usage: #example
Title: "Encounter für Stanzbiopsie Mamma"
Description: "Ambulanter Encounter für US-gestützte Stanzbiopsie in der Screeningeinheit"
* identifier.system = "http://example.hospital.de/encounters"
* identifier.value = "E_25_105"
* status = #finished
* class = #AMB
* subject = Reference(Patient4)
