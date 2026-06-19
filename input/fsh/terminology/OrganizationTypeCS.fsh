CodeSystem: OrganizationTypeCS
Id: organization-type-cs
Title: "Organization Type"
Description: "Ozrganization Type"


* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"

* insert OriginalCodeSystemDraft(organization-type-cs)

* #I "Boshqaruv bo'yicha taqsimlanishi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Распределение по управлению"
  * ^designation[+].language = #en
  * ^designation[=].value = "Distribution by management"

* #II "Muassasalarning guruhlanishi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Группировка учреждений"
  * ^designation[+].language = #en
  * ^designation[=].value = "Grouping of institutions"

* #III "Xizmat ko‘rsatish bo‘yicha guruhlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Группы по виду оказываемых услуг"
  * ^designation[+].language = #en
  * ^designation[=].value = "Groups by type of services provided"

* #IV "Yuridik muassasa tasarrufidagi tashkilot"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Организация, находящаяся в ведении юридического учреждения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Organization under the authority of a legal entity"

* #V "Guruhlanishi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Группировка"
  * ^designation[+].language = #en
  * ^designation[=].value = "Grouping"