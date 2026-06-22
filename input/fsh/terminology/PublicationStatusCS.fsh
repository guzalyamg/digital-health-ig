CodeSystem: PublicationStatusCS
Id: publication-status-cs
Title: "Publication Status CS"
Description: "Publication status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(publication-status-cs, $publication-status, 5.0.0)


* #draft "Draft"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qoralama"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Черновик"

* #active "Active"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Активный"

* #retired "Retired"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol emas (yakunlangan)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Выведен из эксплуатации"

* #unknown "Unknown"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неизвестно"
