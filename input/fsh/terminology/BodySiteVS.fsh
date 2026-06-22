ValueSet: BodySiteVS
Id: body-site-vs
Title: "Body Site VS"
Description: "ValueSet for body site codes with Uzbek and Russian translations"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/body-site-vs"
* ^experimental = true
* ^status = #active
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(BodySiteCS)

* include codes from system $bodysite
