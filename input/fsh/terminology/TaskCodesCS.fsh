
CodeSystem: TaskCodesCS
Id: task-codes-cs
Title: "Task Code CS"
Description: "Category codes for tasks"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* insert OriginalCodeSystemDraft(task-codes-cs)

* #approve-family-doctor
  * ^designation[0].language = #uz
  * ^designation[=].value = "Oilaviy shifokorning roziligi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Утверждение семейного врача"
  * ^designation[+].language = #en
  * ^designation[=].value = "Family doctor approval"

* #approve-specialist
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mutaxassisning roziligi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Утверждение узкого специалиста"
  * ^designation[+].language = #en
  * ^designation[=].value = "Specialist approval"

* #approve-regional-commission
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mintaqaviy komissiyaning roziligi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Утверждение региональной комиссии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Regional commission approval"

* #approve-national-commission
  * ^designation[0].language = #uz
  * ^designation[=].value = "Respublika komissiyasining roziligi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Утверждение республиканской комиссии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Republican commission approval"
  
* #approve-hospitalization 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kasalxonaga yotqizishni tasdiqlash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Утверждение госпитализации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hospitalization approval"

* #approve-insurance-fund 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sug'urta fondi tomonidan tasdiqlash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Утверждение фондом страхования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Approval insurance fund"
