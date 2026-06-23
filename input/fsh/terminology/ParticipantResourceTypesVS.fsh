ValueSet: ParticipantResourceTypesVS
Id: participant-resource-types-vs
Title: "Participant Resource Types VS"
Description: "ValueSet for Partitipant Resource Types codes with Uzbek and Russian translations"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/participant-resource-types-vs"


* ^experimental = true
* ^status = #active
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ParticipantResourceTypesCS)

* include codes from system $fhir-types
