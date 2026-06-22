CodeSystem: ActionParticipantTypeCS
Id: action-participant-type-cs
Title: "Action Patricipant Type CS"
Description: "Action participant type supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(action-participant-type-cs, $action-participant-type, 5.0.0)


* #patient "Patient"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bemor"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Пациент"

* #practitioner "Practitioner"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shifokor / Mutaxassis"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинский работник"

* #practitionerrole "PractitionerRole"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mutaxassis roli"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Роль медицинского работника"

* #relatedperson "RelatedPerson"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aloqador shaxs"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Связанное лицо"
