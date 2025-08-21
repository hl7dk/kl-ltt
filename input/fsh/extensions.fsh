Extension: DeliveryType
Id: klgateway-ltt-encounter-delivery-type
Title: "DeliveryType"
Description: "Extension for a code that specifies some context of how a treatment is delivered to a child or youth."
Context: Encounter
* value[x] only CodeableConcept

Extension: BasedOnCarePlan
Id: klgateway-ltt-encounter-based-on-care-plan
Title:     "BasedOnCarePlan"
Description: "Extension for pointing to the care plan describing why this encounter is taking place (will be part of R5 and comming FHIR versions without needing the extension)"
Context : Encounter
* value[x] only Reference(KLGatewayLTTCarePlan)