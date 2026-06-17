
CodeSystem: TaskBusinessStatusCS
Id: task-business-status-cs
Title: "Task Business Status CS"
Description: "Business status codes for tasks"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* insert OriginalCodeSystemDraft(task-business-status-cs)

* #draft
  * ^designation[0].language = #uz
  * ^designation[=].value = "Loyiha"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Проект"
  * ^designation[+].language = #en
  * ^designation[=].value = "Project"

* #active
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Активный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Active"

* #on-hold
  * ^designation[0].language = #uz
  * ^designation[=].value = "To'xtatilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Приостановлен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Suspended"

* #revoked
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bekor qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аннулирован"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cancelled"

* #completed
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tugallangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Завершен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Completed"

* #entered-in-error
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xatolik tufayli kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введен по ошибке"
  * ^designation[+].language = #en
  * ^designation[=].value = "Entered by Error"

* #in-review
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ko'rib chiqilmoqda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "На рассмотрении"
  * ^designation[+].language = #en
  * ^designation[=].value = "Under Review"

* #confirmed
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tasdiqlangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Подтвержден"
  * ^designation[+].language = #en
  * ^designation[=].value = "Confirmed"

* #not-used
  * ^designation[0].language = #uz
  * ^designation[=].value = "Foydalanilmayapti"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не используется"
  * ^designation[+].language = #en
  * ^designation[=].value = "Not Used"

* #overdue
  * ^designation[0].language = #uz
  * ^designation[=].value = "Muddati o'tgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Просрочен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Overdue"



