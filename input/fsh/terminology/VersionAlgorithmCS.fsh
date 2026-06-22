CodeSystem: VersionAlgorithmCS
Id: version-algorithm-cs
Title: "Version Algorithm CS"
Description: "Version algorithm supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(version-algorithm-cs, $version-algorithm, 5.0.0)


* #semver "SemVer"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Semantik versiyalash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Семантическое версионирование"

* #integer "Integer"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Butun son"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Целое число"

* #alpha "Alphabetical"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Alifbo bo'yicha"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Алфавитный"

* #date "Date"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sana"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дата"

* #natural "Natural"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tabiiy tartiblash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Естественная сортировка"
