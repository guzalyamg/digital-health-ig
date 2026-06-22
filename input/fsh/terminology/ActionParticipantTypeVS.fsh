ValueSet: ActionParticipantTypeVS
Id: action-participant-type-vs
Title: "Action Participant Type VS"
Description: "ValueSet for action participant type codes with Uzbek and Russian translations"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/action-participant-type-vs"

* ^experimental = true
* ^status = #active
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ActionParticipantTypeCS)

* include codes from system $action-participant-type
