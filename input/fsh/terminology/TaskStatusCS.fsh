
CodeSystem: TaskStatusCS
Id: task-status-cs
Title: "Task Status CS"
Description: "Status codes for tasks"
* insert SupplementCodeSystemDraft(task-status-cs, $task-status, 5.0.0)
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"

* #draft
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qoralama"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Черновик"
  * ^designation[+].language = #en
  * ^designation[=].value = "Draft"

* #requested
  * ^designation[0].language = #uz
  * ^designation[=].value = "So'ralgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Запрошено"
  * ^designation[+].language = #en
  * ^designation[=].value = "Requested"

* #received
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qabul qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Получено"
  * ^designation[+].language = #en
  * ^designation[=].value = "Received"

* #accepted
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qabul qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Принято"
  * ^designation[+].language = #en
  * ^designation[=].value = "Accepted"

* #rejected
  * ^designation[0].language = #uz
  * ^designation[=].value = "Rad etilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отклонено"
  * ^designation[+].language = #en
  * ^designation[=].value = "Rejected"

* #ready
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tayyor"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Готово"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ready"

* #cancelled
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bekor qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отменено"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cancelled"

* #in-progress
  * ^designation[0].language = #uz
  * ^designation[=].value = "Jarayonda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В процессе"
  * ^designation[+].language = #en
  * ^designation[=].value = "In Progress"

* #on-hold
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kutishda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Приостановлено"
  * ^designation[+].language = #en
  * ^designation[=].value = "On Hold"

* #failed
  * ^designation[0].language = #uz
  * ^designation[=].value = "Muvaffaqiyatsiz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неудачно"
  * ^designation[+].language = #en
  * ^designation[=].value = "Failed"

* #completed
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bajarildi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Завершено"
  * ^designation[+].language = #en
  * ^designation[=].value = "Completed"

* #entered-in-error
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xatolik bilan kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введено с ошибкой"
  * ^designation[+].language = #en
  * ^designation[=].value = "Entered in Error"




