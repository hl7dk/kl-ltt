Profile: KLGatewayLTTIncrementalDelivery
Parent: Bundle
Id: klgateway-ltt-incremental-delivery
Title: "KLGAtewayLTTIncrementalDelivery"
Description: "Delivery for all delivery reports made since last update (unordered)."
* identifier ..0
* type = #collection
* timestamp 1..1
* total ..0
* link ..0
* entry.resource 1..1
* entry.resource only
    KLGatewayLTTDeliveryReport
* entry.resource ^short = "Content constrained to known delivery reports"
* entry.search ..0
* entry.request ..0
* entry.response ..0
* signature ..0

Instance: TestIncrementalDelivery
InstanceOf: KLGatewayLTTIncrementalDelivery
Description: "Example of an incremental delivery with one delivery report"
* type = #collection
* timestamp = 2025-07-08T03:00:00Z
* entry[+].fullUrl = "https://test.fhir.dk/Bundle/RapportOmJosefine"
* entry[=].resource = RapportOmJosefine