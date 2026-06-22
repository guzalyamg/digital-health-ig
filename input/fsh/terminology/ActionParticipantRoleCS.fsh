CodeSystem: ActionParticipantRoleCS
Id: action-participant-role-cs
Title: "Action Participant Role CS"
Description: "Action participant role supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(action-participant-role-cs, $action-participant-role, 5.0.0)


* #309343006 "Doctor"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shifokor"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Врач"

* #106292003 "Professional Nurse"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Professional hamshira"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Профессиональная медсестра"