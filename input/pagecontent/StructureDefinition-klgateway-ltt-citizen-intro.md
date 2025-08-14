## Scope and usage
This model is used to identify the subject of a delivery report by the personal id number (CPR-nummer), which should go into Patient.identifier. The personal id number must be an official Danish 'CPR-nummer' without hyphen. 

The model also identifies the managing organization that acts as the custodian of the reported data. The managing organization is identified by its official SOR code. The SOR codes should be documented in Patient.managingOrganization.identifier.

Citizen resources is used to identify only the child or youth and not the parents or legal guardians.

Patient.active is optional and assumed true, if not given. Patient.active = false is used to report  entered-in-error. However, this option should only be used, if the patient is fully unknown to the municipality system, and should never have been in the system at all.

### Conversions between Danish information model and FHIR profile

Nedenstående tabel definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter, der skal bruges til specifikation af indholdet.

{:class="grid"}
|   Dansk attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|CPR|Officielt cpr-nummer på borgeren|Patient.identifier|
|harAktivJournal|Angiver om borger har en aktiv journal i den journalførende organisation eller ej|Patient.active|
|journalførendeOrganisation|Organisation som ejer journalen med oplysninger|Patient.managingOrganization.identifier|
