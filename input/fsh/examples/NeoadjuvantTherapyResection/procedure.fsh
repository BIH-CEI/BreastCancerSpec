// Neoadjuvante Chemotherapie
Instance: NeoadjuvantChemotherapyProcedure
InstanceOf: Procedure
Usage: #example
Title: "Neoadjuvante Chemotherapie"
Description: "Neoadjuvante Chemotherapie vor Mastektomie bei triple-negativem Mammakarzinom"
* status = #completed
* category = $sct#367336001 "Chemotherapy (procedure)"
* code = $sct#394894008 "Pre-operative chemotherapy (procedure)"
* code.text = "Neoadjuvante Chemotherapie (dose-dense EC + Paclitaxel)"
* subject = Reference(Patient2)
* performedPeriod.start = "2024-05-20"
* performedPeriod.end = "2024-09-10"
* reasonReference = Reference(NeoadjuvantTherapyResectionDiagnosisPreOp)
* note.text = "4 Zyklen dose-dense Epirubicin/Cyclophosphamid gefolgt von 12x wöchentlich Paclitaxel. Klinisch komplettes Ansprechen."
