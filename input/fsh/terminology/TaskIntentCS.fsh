
CodeSystem: TaskIntentCS
Id: task-intent-cs
Title: "Task Intent CS"
Description: "Intent codes for tasks"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* insert SupplementCodeSystemDraft(task-intent-cs, $task-intent, 0.5.0)


* #unknown
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неизвестно"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unknown"

