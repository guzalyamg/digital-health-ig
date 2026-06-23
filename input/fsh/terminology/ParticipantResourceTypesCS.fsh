CodeSystem: ParticipantResourceTypesCS
Id: participant-resource-types-cs
Title: "Participant Resource Types CS"
Description: "Partitipant Resource Types supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(participant-resource-types-cs, $fhir-types, 5.0.0)

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

* #relatedperson "RelatedPerson"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aloqador shaxs"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Связанное лицо"

