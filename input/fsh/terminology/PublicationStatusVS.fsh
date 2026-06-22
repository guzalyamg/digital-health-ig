ValueSet: PublicationStatusVS
Id: publication-status-vs
Title: "Publication Status VS"
Description: "ValueSet for publication status codes with Uzbek and Russian translations"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/publication-status-vs"


* ^experimental = true
* ^status = #active
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(PublicationStatusCS)

* include codes from system $publication-status
