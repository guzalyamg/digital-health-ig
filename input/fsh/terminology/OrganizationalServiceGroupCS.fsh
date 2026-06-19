CodeSystem: OrganizationalServiceGroupCS
Id: organizational-service-group-cs
Title: "Organizational Service Group"
Description: "Ozrganizational Service Group"

* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"

* insert OriginalCodeSystemDraft(organizational-service-group-cs)

* #III_100 "Poliklinika boʻlimi va statsionar boʻlimi mavjud"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Имеется амбулаторное и стационарное отделение."
  * ^designation[+].language = #en
  * ^designation[=].value = "There is an outpatient and inpatient department."

* #III_200 "Statsionar boʻlimi mavjud"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Имеется стационарное отделение."
  * ^designation[+].language = #en
  * ^designation[=].value = "There is an inpatient department."

* #III_300 "Statsionar kunduzgi boʻlimi bilan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стационар с дневным уходом"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hospital with day care"

* #III_400 "Poliklinika boʻlimi va kunduzgi statsionar boʻlimi bilan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "С амбулаторным отделением и дневным стационаром"
  * ^designation[+].language = #en
  * ^designation[=].value = "With an outpatient department and a day hospital"

* #III_500 "Poliklinika boʻlimi mavjud"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Имеется поликлиническое отделение."
  * ^designation[+].language = #en
  * ^designation[=].value = "There is a polyclinic department."

* #III_600 "Boshqalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие"
  * ^designation[+].language = #en
  * ^designation[=].value = "Others"