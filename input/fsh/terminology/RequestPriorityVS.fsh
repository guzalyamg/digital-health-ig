ValueSet: RequestPriorityVS
Id: request-priority-vs
Title: "Request Priority VS"
Description: "ValueSet for request priority codes with Uzbek and Russian translations"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/request-priority-vs"
* ^experimental = true
* ^status = #active
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RequestPriorityCS)

* include codes from system $request-priority
