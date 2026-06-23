CodeSystem: ResourceTypesCS
Id: resource-types-cs
Title: "Resource Types CS"
Description: "Resource types supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(resource-types-cs, $fhir-types, 5.0.0)


* #ImmunizationRecommendation "ImmunizationRecommendation"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Emlash tavsiyasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рекомендация по вакцинации"

* #MedicationRequest "MedicationRequest"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Dori so'rovi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Запрос на медикаменты"
