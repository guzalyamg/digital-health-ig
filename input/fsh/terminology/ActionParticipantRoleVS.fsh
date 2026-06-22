ValueSet: ActionParticipantRoleVS
Id: action-participant-role-vs
Title: "Action Participant Role VS"
Description: "ValueSet for Action participant role codes with Uzbek and Russian translations"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/action-participant-role-vs"


* ^experimental = true
* ^status = #active
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ActionParticipantRoleCS)

* include codes from system $action-participant-role
