Profile: KLGatewayLTTDeliveryReport
Parent: Bundle
Id: klgateway-ltt-delivery-report
Title: "KLGatewayLTTDeliveryReport"
Description: "Delivery report to deliver data for each child or youth."
* identifier 0..0
* type = #collection
* timestamp 1..1
* timestamp ^short = "[DK] indberetningsrapportTid"
* total 0..0
* link 0..0
* entry.link 0..0
* entry.resource 1..1
* entry.resource ^short = "[DK] indberetningsrapportIndhold"
* entry.resource only
    klgateway-ltt-care-plan or
    klgateway-ltt-citizen or
    klgateway-ltt-encounter or
    klgateway-ltt-referral
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
* signature 0..0

Instance: RapportOmJosefine
InstanceOf: KLGatewayLTTDeliveryReport
Description: "Rapport om Josefine."
Usage: #example
* type = #collection
* timestamp = "2025-07-08T03:00:00.000+02:00"
* entry[+].fullUrl = Canonical(Forloeb)
* entry[=].resource = Forloeb
* entry[+].fullUrl = Canonical(Josefine)
* entry[=].resource = Josefine
* entry[+].fullUrl = Canonical(Behandlingskontakt)
* entry[=].resource = Behandlingskontakt
* entry[+].fullUrl = Canonical(Henvisning)
* entry[=].resource = Henvisning
