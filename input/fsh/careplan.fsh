Profile: KLGatewayLTTCarePlan
Parent: CarePlan
Id: klgateway-ltt-care-plan
Title: "KLGatewayLTTCarePlan"
Description: "Care plan for Danish municipalities to use for each child or youth regarding the health act §126a."
* obeys klgateway-ltt-careplan-endtime
/* * identifier 1..1
* identifier 
  * ^short = "[DK] forløbsid"
  * use 1..1
  * use = #official
  * type 0..0
  * system 1..1
  * system = "http://TODO" //TODO
  * value 1..1
  * period 0..0
  * assigner 0..0
  */
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0
* replaces 0..0
* partOf 0..0
* status ^short = "[DK] forløbsstatus"
* intent ^short = "[DK] forløbshensigt"
* intent = #plan
* category 0..0
* title 0..0
* description 0..0
* subject only Reference(KLGatewayLTTCitizen)
* subject ^short = "[DK] forløbssubjekt"
* encounter 0..0
* period 1..1
* period
  * start 1..1
  * start ^short = "[DK] forløbstart"
  * end ^short = "[DK] forløbslut"
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
    * code from LTTCarePlanActivityTypes (required)
      * ^short = "[DK] forløbskode"
      * coding 1..1
        * system = $KLCommonCodes
        * version 0..0
        * code = #01302bcb-c7f3-42c4-8ded-68e33da064eb
        * display = "Lettilgængelige tilbud til børn og unge i psykisk mistrivsel"
        * userSelected 0..0
      * text 0..0
    * reasonCode 0..*
    * reasonCode from LTTFocusArea (required)
      * ^short = "[DK] forløbstema"
      * coding 1..1
        * version 0..0
        * userSelected 0..0
      * text 0..0
    * reasonReference 0..0
    * goal 0..0
    * status ^short = "[DK] forløbsAktivitetsstatus"
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

Invariant: klgateway-ltt-careplan-endtime
Description: "If the care plan has status = 'completed', then there must be an end time."
Severity: #error
Expression: "status = 'completed' implies period.end.exists()"

Instance: Forloeb
InstanceOf: KLGatewayLTTCarePlan
Description: "Forløb for barnet Josefine"
Usage: #example
/* * identifier.use = #official
* identifier.system = "http://TODO" //TODO
* identifier.value = "423423ssefe34" */
* status = #active
* intent = #plan
* subject = Reference(Josefine)
* period.start = "2025-05-14T08:17:00Z"
* activity.detail.code = $KLCommonCodes#01302bcb-c7f3-42c4-8ded-68e33da064eb "Lettilgængelige tilbud til børn og unge i psykisk mistrivsel"
* activity.detail.reasonCode[+] = $LTT#bf4df811-805a-4309-8394-7d9ea31b8af7 "Krop og mad"
* activity.detail.reasonCode[+] = $LTT#5cea8eb2-5374-45f7-a985-cef1f577f0a1 "Selvskade"
* activity.detail.status = #in-progress

