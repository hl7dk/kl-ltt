//1st

Instance: DeliveryReport-Josefine-1
InstanceOf: KLGatewayLTTDeliveryReport
Description: "DeliveryReport-Josefine-1"
Usage: #example
* type = #collection
* timestamp = "2025-05-14T23:45:51Z"
* entry[+].fullUrl = "https://test.fhir.dk/Patient/407ceb16-acb4-43ea-a4f5-d415c17faded"
* entry[=].resource = 407ceb16-acb4-43ea-a4f5-d415c17faded
* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/857ea1d6-c212-4c89-a2f4-9e2bfa8c288d"
* entry[=].resource = 857ea1d6-c212-4c89-a2f4-9e2bfa8c288d
* entry[+].fullUrl = "https://test.fhir.dk/Encounter/bd3ad9c0-0257-49a3-b2ea-a4198efe6816" //Henvendelse
* entry[=].resource = bd3ad9c0-0257-49a3-b2ea-a4198efe6816


Instance: 407ceb16-acb4-43ea-a4f5-d415c17faded
InstanceOf: KLGatewayLTTCitizen
Description: "Barnet Josefine. Holbæk kommune er journalførende organisation."
Usage: #inline
* id = "407ceb16-acb4-43ea-a4f5-d415c17faded"
* identifier.use = #official
* identifier.value = "0505149996"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* active = true
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "451000016003"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"

Instance: 857ea1d6-c212-4c89-a2f4-9e2bfa8c288d
InstanceOf: KLGatewayLTTCarePlan
Description: "Forløb for borgeren Josefine."
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(407ceb16-acb4-43ea-a4f5-d415c17faded)
* period.start = "2025-05-14T09:12:05Z"
* activity.detail.code = $KLCommonCodes#01302bcb-c7f3-42c4-8ded-68e33da064eb "Lettilgængelige tilbud til børn og unge i psykisk mistrivsel"
* activity.detail.status = #in-progress

Instance: bd3ad9c0-0257-49a3-b2ea-a4198efe6816
InstanceOf: KLGatewayLTTEncounter
Description: "Kontakt, hvor Josefines mor henvender sig til Holbæk kommune."
Usage: #inline
* extension[basedOnCarePlan].valueReference = Reference(857ea1d6-c212-4c89-a2f4-9e2bfa8c288d)
* status = #finished
* class = $KLCommonCodes#1b55a4b0-1156-4f58-b2df-b5c6014d9048 "Telefonisk"
* type = $LTT#ac1057da-a510-4bab-a2b1-d96efa464bdc "Henvendelse"
* subject = Reference(407ceb16-acb4-43ea-a4f5-d415c17faded)
* period.start = "2025-05-14T09:12:05Z"

//2nd

Instance: DeliveryReport-Josefine-2
InstanceOf: KLGatewayLTTDeliveryReport
Description: "DeliveryReport-Josefine-2"
Usage: #example
* type = #collection
* timestamp = "2025-06-02T23:45:51Z"
* entry[+].fullUrl = "https://test.fhir.dk/Patient/407ceb16-acb4-43ea-a4f5-d415c17faded"
* entry[=].resource = 407ceb16-acb4-43ea-a4f5-d415c17faded
* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/857ea1d6-c212-4c89-a2f4-9e2bfa8c288d"
* entry[=].resource = 857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v2
* entry[+].fullUrl = "https://test.fhir.dk/Encounter/77bdc678-c508-43c3-bf39-4e2ced5ad70a" //Forsamtale
* entry[=].resource = 77bdc678-c508-43c3-bf39-4e2ced5ad70a

Instance: 857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v2
InstanceOf: KLGatewayLTTCarePlan
Description: "Forløb for borgeren Josefine. Tema tilføjet"
Usage: #inline
* id = "857ea1d6-c212-4c89-a2f4-9e2bfa8c288d"
* status = #active
* intent = #plan
* subject = Reference(407ceb16-acb4-43ea-a4f5-d415c17faded)
* period.start = "2025-05-14T09:12:05Z"
* activity.detail.code = $KLCommonCodes#01302bcb-c7f3-42c4-8ded-68e33da064eb "Lettilgængelige tilbud til børn og unge i psykisk mistrivsel"
* activity.detail.reasonCode[+] = $LTT#bf4df811-805a-4309-8394-7d9ea31b8af7 "Krop og mad"
* activity.detail.status = #in-progress

Instance: 77bdc678-c508-43c3-bf39-4e2ced5ad70a
InstanceOf: KLGatewayLTTEncounter
Description: "Forsamtale med Josefines forældre."
Usage: #inline
* extension[basedOnCarePlan].valueReference = Reference(857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v2)
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $LTT#e2eee938-a58c-42d0-a514-dc91779b1243 "Forsamtale"
* subject = Reference(407ceb16-acb4-43ea-a4f5-d415c17faded)
* period.start = "2025-06-02T13:06:35Z"

//3rd

Instance: DeliveryReport-Josefine-3
InstanceOf: KLGatewayLTTDeliveryReport
Description: "DeliveryReport-Josefine-3"
Usage: #example
* type = #collection
* timestamp = "2025-06-23T23:45:51Z"
* entry[+].fullUrl = "https://test.fhir.dk/Patient/407ceb16-acb4-43ea-a4f5-d415c17faded"
* entry[=].resource = 407ceb16-acb4-43ea-a4f5-d415c17faded
* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/857ea1d6-c212-4c89-a2f4-9e2bfa8c288d"
* entry[=].resource = 857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v2
* entry[+].fullUrl = "https://test.fhir.dk/Encounter/d74d375c-cb8c-4c30-ad7e-8c975eaaaa4e" //Screening
* entry[=].resource = d74d375c-cb8c-4c30-ad7e-8c975eaaaa4e

Instance: d74d375c-cb8c-4c30-ad7e-8c975eaaaa4e
InstanceOf: KLGatewayLTTEncounter
Description: "Screening, der bekræfter tema."
Usage: #inline
* extension[basedOnCarePlan].valueReference = Reference(857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v2)
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $LTT#404665f4-3488-4225-953e-3f1c5a061829 "Screening"
* subject = Reference(407ceb16-acb4-43ea-a4f5-d415c17faded)
* period.start = "2025-06-23T10:35:12Z"

//4th

Instance: DeliveryReport-Josefine-4
InstanceOf: KLGatewayLTTDeliveryReport
Description: "DeliveryReport-Josefine-4"
Usage: #example
* type = #collection
* timestamp = "2025-07-07T23:45:51Z"
* entry[+].fullUrl = "https://test.fhir.dk/Patient/407ceb16-acb4-43ea-a4f5-d415c17faded"
* entry[=].resource = 407ceb16-acb4-43ea-a4f5-d415c17faded
* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/857ea1d6-c212-4c89-a2f4-9e2bfa8c288d"
* entry[=].resource = 857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v3
* entry[+].fullUrl = "https://test.fhir.dk/Encounter/1e301099-74bc-468b-8878-31839f201eb3" //Behandling
* entry[=].resource = 1e301099-74bc-468b-8878-31839f201eb3
* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/fc350499-9e8d-4236-b4e2-4f9d47174b85"
* entry[=].resource = fc350499-9e8d-4236-b4e2-4f9d47174b85

Instance: 857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v3
InstanceOf: KLGatewayLTTCarePlan
Description: "Forløb for borgeren Josefine. Et tema er tilføjet."
Usage: #inline
* id = "857ea1d6-c212-4c89-a2f4-9e2bfa8c288d"
* status = #active
* intent = #plan
* subject = Reference(407ceb16-acb4-43ea-a4f5-d415c17faded)
* period.start = "2025-05-14T09:12:05Z"
* activity.detail.code = $KLCommonCodes#01302bcb-c7f3-42c4-8ded-68e33da064eb "Lettilgængelige tilbud til børn og unge i psykisk mistrivsel"
* activity.detail.reasonCode[+] = $LTT#bf4df811-805a-4309-8394-7d9ea31b8af7 "Krop og mad"
* activity.detail.reasonCode[+] = $LTT#95c5e9fc-33b7-4d85-9417-64fc3164eb4c "Bekymring"
* activity.detail.status = #in-progress

Instance: 1e301099-74bc-468b-8878-31839f201eb3
InstanceOf: KLGatewayLTTEncounter
Description: "Josefine deltager i den første behandling."
Usage: #inline
* extension[basedOnCarePlan].valueReference = Reference(857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v3)
* extension[deliveryType].valueCodeableConcept = $KLCommonCodes#8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel indsats"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $LTT#b7f9217c-2315-4d6f-bba5-5117e202302c "Behandling"
* subject = Reference(407ceb16-acb4-43ea-a4f5-d415c17faded)
* period.start = "2025-07-07T13:28:17Z"
* participant.type.coding = $KLCommonCodes#ca228a58-bd0e-4b0e-81ce-3866adc26535 "Barn/ung deltager"


Instance: fc350499-9e8d-4236-b4e2-4f9d47174b85
InstanceOf: KLGatewayLTTReferral
Description: "Henvisning for barnet Josefine til supplerende tilbud i civilsamfundet."
Usage: #inline
* basedOn = Reference(857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v3)
* status = #completed
* intent = #plan
* subject = Reference(407ceb16-acb4-43ea-a4f5-d415c17faded)
* period.start = "2025-07-07T14:28:17Z"
* activity.detail.code = $LTT#f3d5cb7b-e059-4fbc-9514-a53299c2e3cf "Civilsamfund"
* activity.detail.status = #completed

//5th, 6th, 7th

Instance: DeliveryReport-Josefine-5-6-7
InstanceOf: KLGatewayLTTDeliveryReport
Description: "DeliveryReport-Josefine-5-6-7"
Usage: #example
* type = #collection
* timestamp = "2025-08-18T23:45:51Z"
* entry[+].fullUrl = "https://test.fhir.dk/Patient/407ceb16-acb4-43ea-a4f5-d415c17faded"
* entry[=].resource = 407ceb16-acb4-43ea-a4f5-d415c17faded
* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/857ea1d6-c212-4c89-a2f4-9e2bfa8c288d"
* entry[=].resource = 857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v3
* entry[+].fullUrl = "https://test.fhir.dk/Encounter/d5c5a3c0-6a7a-4988-84a3-dcfb4428a3a6" //Behandling
* entry[=].resource = d5c5a3c0-6a7a-4988-84a3-dcfb4428a3a6

Instance: d5c5a3c0-6a7a-4988-84a3-dcfb4428a3a6
InstanceOf: KLGatewayLTTEncounter
Description: "Josefine deltager i næste behandling."
Usage: #inline
* extension[basedOnCarePlan].valueReference = Reference(857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v3)
* extension[deliveryType].valueCodeableConcept = $KLCommonCodes#8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel indsats"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $LTT#b7f9217c-2315-4d6f-bba5-5117e202302c "Behandling"
* subject = Reference(407ceb16-acb4-43ea-a4f5-d415c17faded)
* period.start = "2025-08-18T10:56:33Z"
* participant.type.coding = $KLCommonCodes#ca228a58-bd0e-4b0e-81ce-3866adc26535 "Barn/ung deltager"

//8th

Instance: DeliveryReport-Josefine-8
InstanceOf: KLGatewayLTTDeliveryReport
Description: "DeliveryReport-Josefine-8"
Usage: #example
* type = #collection
* timestamp = "2025-11-06T23:45:51Z"
* entry[+].fullUrl = "https://test.fhir.dk/Patient/407ceb16-acb4-43ea-a4f5-d415c17faded"
* entry[=].resource = 407ceb16-acb4-43ea-a4f5-d415c17faded
* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/857ea1d6-c212-4c89-a2f4-9e2bfa8c288d"
* entry[=].resource = 857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v3
* entry[+].fullUrl = "https://test.fhir.dk/Encounter/d0d9e7a8-f71c-4a9e-9969-79f9b5a1bcdf" //Afsluttende samtale
* entry[=].resource = d0d9e7a8-f71c-4a9e-9969-79f9b5a1bcdf

Instance: d0d9e7a8-f71c-4a9e-9969-79f9b5a1bcdf
InstanceOf: KLGatewayLTTEncounter
Description: "Afsluttende samtale."
Usage: #inline
* extension[basedOnCarePlan].valueReference = Reference(857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v3)
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $LTT#afd9445a-7ca5-42f8-8011-c3802db3f30b "Afsluttende samtale"
* subject = Reference(407ceb16-acb4-43ea-a4f5-d415c17faded)
* period.start = "2025-11-06T11:00:05Z"

//9th

Instance: DeliveryReport-Josefine-9
InstanceOf: KLGatewayLTTDeliveryReport
Description: "DeliveryReport-Josefine-9"
Usage: #example
* type = #collection
* timestamp = "2025-11-08T23:45:51Z"
* entry[+].fullUrl = "https://test.fhir.dk/Patient/407ceb16-acb4-43ea-a4f5-d415c17faded"
* entry[=].resource = 407ceb16-acb4-43ea-a4f5-d415c17faded
* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/857ea1d6-c212-4c89-a2f4-9e2bfa8c288d"
* entry[=].resource = 857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v4
* entry[+].fullUrl = "https://test.fhir.dk/Encounter/85b9044c-f75b-4159-bb72-8bdec5828b05" //Afslutning
* entry[=].resource = 85b9044c-f75b-4159-bb72-8bdec5828b05

Instance: 857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v4
InstanceOf: KLGatewayLTTCarePlan
Description: "Forløb for borgeren Josefine afsluttes."
Usage: #inline
* id = "857ea1d6-c212-4c89-a2f4-9e2bfa8c288d"
* status = #completed
* intent = #plan
* subject = Reference(407ceb16-acb4-43ea-a4f5-d415c17faded)
* period.start = "2025-05-14T09:12:05Z"
* period.end = "2025-11-08T15:36:22Z"
* activity.detail.code = $KLCommonCodes#01302bcb-c7f3-42c4-8ded-68e33da064eb "Lettilgængelige tilbud til børn og unge i psykisk mistrivsel"
* activity.detail.reasonCode[+] = $LTT#bf4df811-805a-4309-8394-7d9ea31b8af7 "Krop og mad"
* activity.detail.reasonCode[+] = $LTT#95c5e9fc-33b7-4d85-9417-64fc3164eb4c "Bekymring"
* activity.detail.status = #completed

Instance: 85b9044c-f75b-4159-bb72-8bdec5828b05
InstanceOf: KLGatewayLTTEncounter
Description: "Afslutning på behandlingsforløbet for Josefine."
Usage: #inline
* extension[basedOnCarePlan].valueReference = Reference(857ea1d6-c212-4c89-a2f4-9e2bfa8c288d-v4)
* status = #finished
* class = $KLCommonCodes#1b55a4b0-1156-4f58-b2df-b5c6014d9048 "Telefonisk"
* type = $LTT#3b1d8884-5a1d-43cf-aabb-8c1035148c46 "Afslutning"
* subject = Reference(407ceb16-acb4-43ea-a4f5-d415c17faded)
* period.start = "2025-11-08T15:36:22Z"