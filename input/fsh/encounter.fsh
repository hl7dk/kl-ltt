Profile: KLGatewayLTTEncounter
Parent: Encounter
Id: klgateway-ltt-encounter
Title: "KLGatewayLTTEncounter"
Description: "Encounter between a child or youth and the LTT"
* obeys klgateway-ltt-encounter-participants-and-deliveryType
* extension contains 
  DeliveryType named deliveryType 0..1 and
  BasedOnCarePlan named basedOnCarePlan 1..1
* extension[deliveryType].valueCodeableConcept.coding from LTTDeliveryTypes (required)
* extension[deliveryType] ^short = "[DK] kontaktLeveringstype"
* extension[basedOnCarePlan] ^short = "[DK] kontaktBaseretPå"
* identifier 0..0
* status ^short = "[DK] kontaktstatus"
* statusHistory 0..0
* class = $v3-ActCode#AMB
  * ^short = "[DK] kontaktklasse"
  * system 1..1
  * version 0..0
  * code 1..1
  * userSelected 0..0
* classHistory 0..0
* type 1..1
  * ^short = "[DK] kontakttype"
* type from LTTEncounterTypes (required)
* type.coding 1..1
* type.coding.version 0..0
* type.coding.userSelected 0..0
* type.text 0..0
* serviceType 0..0
* priority 0..0
* subject only Reference(KLGatewayLTTCitizen)
* subject ^short = "[DK] kontaktsubjekt"
* episodeOfCare 0..0
* basedOn 0..0
* participant 0..1
* participant ^short = "[DK] kontaktdeltagere"
  * type 1..1
  * type from LTTParticipantTypes (required)
  * period 0..0
  * individual 0..0
* appointment 0..0
* period 1..1
  * start 1..1
  * start ^short = "[DK] kontaktstart"
  * end 0..0
* length 0..0
* reasonCode 0..0
* reasonReference 0..0
* diagnosis 0..0
* account 0..0
* hospitalization 0..0
* location 0..0
* serviceProvider 0..0
* partOf 0..0


Invariant: klgateway-ltt-encounter-participants-and-deliveryType
Description: "If the encounter is of type 'Behandling', then the encounter must have participant and deliveryType."
Severity: #error
Expression: "type.coding.code = 'b7f9217c-2315-4d6f-bba5-5117e202302c' implies (participant.type.coding.exists() and extension.where(url='http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter-delivery-type').value.coding.exists())"


Instance: Behandlingskontakt
InstanceOf: KLGatewayLTTEncounter
Description: "Josefines seneste behandlingskontakt."
Usage: #example
* extension[deliveryType].valueCodeableConcept = $KLCommonCodes#8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel indsats"
* extension[basedOnCarePlan].valueReference = Reference(Forloeb)
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $LTT#b7f9217c-2315-4d6f-bba5-5117e202302c "Behandling"
* subject = Reference(Josefine)
* period.start = "2025-07-07T13:28:17Z"
* participant.type.coding = $KLCommonCodes#ca228a58-bd0e-4b0e-81ce-3866adc26535 "Barn/ung deltager"