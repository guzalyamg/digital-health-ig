ValueSet: IdentifierTypeVS
Id: identifier-type-vs
Title: "Identifier Type"
Description: "Identifier Type"

* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"


* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/identifier-type-vs"
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(IdentifierTypeCS)

* include codes from system $identifier-type