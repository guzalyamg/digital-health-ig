ValueSet: VersionAlgorithmVS
Id: version-algorithm-vs
Title: "Version Algorithm VS"
Description: "ValueSet for version algorithm codes with Uzbek and Russian translations"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/version-algorithm-vs"
* ^experimental = true
* ^status = #active
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(VersionAlgorithmCS)

* include codes from system $version-algorithm
