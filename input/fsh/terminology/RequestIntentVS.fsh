ValueSet: ServiceIntentVS
Id: service-intent-vs
Title: "Service Intent"
Description: "Request intent codes for service requests with Uzbek and Russian translations"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/service-intent-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RequestIntentCS)
* include codes from system $request-intent
