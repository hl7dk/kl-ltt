Profile: KLGatewayLTTReferral
Parent: CarePlan
Id: klgateway-ltt-referral
Title: "KLGatewayLTTReferral"
Description: "Referral of the child or youth to other services."
* identifier 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 1..1
* basedOn only Reference(KLGatewayLTTCarePlan)
* basedOn ^short = "[DK] forløbsreference"
* replaces 0..0
* partOf 0..0
* status ^short = "[DK] henvisningsstatus"
* intent ^short = "[DK] henvisningshensigt"
* intent = #plan
* category 0..0
* title 0..0
* description 0..0
* subject only Reference(KLGatewayLTTCitizen)
* subject ^short = "[DK] henvisningssubjekt"
* encounter 0..0
* period 1..1
  * start 1..1
  * start ^short = "[DK] henvisningstidspunkt"
  * end 0..0
* created 0..0
* author 0..0
* contributor 0..0
* careTeam 0..0
* addresses 0..0
* supportingInfo 0..0
* goal 0..0
* activity 1..1
  * outcomeCodeableConcept 0..0
  * outcomeReference 0..0
  * progress 0..0
  * reference 0..0
  * detail 1..1
    * kind 0..0
    * instantiatesCanonical 0..0
    * instantiatesUri 0..0
    * code 1..1
    * code from LTTTypeOfReferral (required)
      * ^short = "[DK] henvisningskode"
      * coding 1..1
        * version 0..0
        * userSelected 0..0
      * text 0..0
    * reasonCode 0..0
    * reasonReference 0..0
    * goal 0..0
    * status ^short = "[DK] henvisningsAktivitetsstatus"
    * status = #completed
    * statusReason 0..0
    * doNotPerform 0..0
    * scheduled[x] 0..0
    * location 0..0
    * performer 0..0
    * product[x] 0..0
    * dailyAmount 0..0
    * quantity 0..0
    * description 0..0
* note 0..0

Instance: Henvisning
InstanceOf: KLGatewayLTTReferral
Description: "Henvisning for barnet Josefine"
Usage: #example
* basedOn = Reference(Forloeb)
* status = #completed
* intent = #plan
* subject = Reference(Josefine)
* period.start = "2025-07-07T13:28:17+02:00"
* activity.detail.code = $LTT#59721d6a-71c7-4cae-954c-5997cbebd387 "Andet tilbud i hjemkommune"
* activity.detail.status = #completed