ValueSet: LTTEncounterTypes
Id: fkgateway-ltt-encounter-types
Title: "Lettilgængeligt Tilbud - Kontakttyper"
Description: "Types of encounters in LTT"
* ^experimental = false
* $LTT#afd9445a-7ca5-42f8-8011-c3802db3f30b "Afsluttende samtale"
* $LTT#ac1057da-a510-4bab-a2b1-d96efa464bdc "Henvendelse"
* $LTT#e2eee938-a58c-42d0-a514-dc91779b1243 "Forsamtale"
* $LTT#404665f4-3488-4225-953e-3f1c5a061829 "Screening"
* $LTT#b7f9217c-2315-4d6f-bba5-5117e202302c "Behandling"

ValueSet: LTTCarePlanActivityTypes
Id: fkgateway-ltt-care-plan-activity-types
Title: "Lettilgængeligt Tilbud - Forløbskoder"
Description: "Types of careplan acitivities in LTT"
* ^experimental = false
* $KLCommonCodes#01302bcb-c7f3-42c4-8ded-68e33da064eb "Lettilgængelige tilbud til børn og unge i psykisk mistrivsel"

ValueSet: LTTFocusArea
Id: fkgateway-ltt-focus-area
Title: "Lettilgængeligt Tilbud - Tema"
Description: "Focus areas reflect the challenges presented by the child or youth."
* ^experimental = false
* include codes from system $LTT where concept descendent-of #d09ad8c9-7ade-455f-b34a-54c8c6cce266

ValueSet: LTTDeliveryTypes
Id: fkgateway-ltt-type-of-delivery
Title: "Lettilgængeligt Tilbud - Leveringstype"
Description: "Delivery types"
* ^experimental = false
* include codes from system $KLCommonCodes where concept descendent-of #3f79cee2-b148-4f2c-9cbd-387820e74685

ValueSet: LTTParticipantTypes
Id: fkgateway-ltt-type-of-participants
Title: "Lettilgængeligt Tilbud - Deltagere i kontakt"
Description: "Participants"
* ^experimental = false
* include codes from system $KLCommonCodes where concept descendent-of #880028ec-5f16-4242-ba53-57a902094d5b


ValueSet: LTTTypeOfReferral
Id: fkgateway-ltt-type-of-referral
Title: "Lettilgængeligt Tilbud - Henvisning"
Description: "Referral/Guidance to another service."
* ^experimental = false
* include codes from system $LTT where concept descendent-of #92aa0b05-ed46-4fd6-8009-adf97d0fc187
