Profile: KLGatewayLTTCitizen
Parent: DkCorePatient
Id: klgateway-ltt-citizen
Title: "KLGatewayLTTCitizen"
Description: "Administrative information about a citizen participating in LTT."
* identifier 1..1
* identifier[cpr] 1..1
  * ^short = "[DK] CPR"
* identifier[x-ecpr] 0..0
* identifier[d-ecpr] 0..0
* active 1..1
* active ^short = "[DK] harAktivJournal"
* name[official] 0..0
* name 0..0
* telecom 0..0
* gender 0..0
* birthDate 0..0
* deceased[x] 0..0
* address 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* generalPractitioner[referencedSORUnit] 0..0
* generalPractitioner 0..0
* managingOrganization 1..1
  * ^short = "[DK] journalførendeOrganisation"
  * reference 0..0
  * type 0..0
  * identifier 1..1
  * identifier only dk-core-sor-identifier
  * display 0..0
* link 0..0

Instance: Josefine
InstanceOf: KLGatewayLTTCitizen
Description: "Barnet Josefine"
Usage: #example
* identifier.use = #official
* identifier.value = "0505149996"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* active = true
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "451000016003"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"