

CodeSystem: RequestIntentCS
Id: request-intent-cs
Title: "Request Intent CS"
Description: "Request Intent codes for service requests in Uzbekistan Core profiles"
* insert SupplementCodeSystemDraft(request-intent-cs, $request-intent, 5.0.0)

* #proposal 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Taklif"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Предложение"

* #plan 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Reja"
  * ^designation[+].language = #ru
  * ^designation[=].value = "План"

* #directive 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ko'rsatma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Распоряжение"

* #order 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tayinlash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Назначение"

* #original-order
  * ^designation[0].language = #uz
  * ^designation[=].value = "Birlamchi tayinlash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Первичное назначение"

* #reflex-order
  * ^designation[0].language = #uz
  * ^designation[=].value = "Refleks tayinlash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рефлексное назначение"

* #filler-order
  * ^designation[0].language = #uz    
  * ^designation[=].value = "Ijrochi tayinlashi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Назначение исполнителя"

* #instance-order
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aniq tayinlash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Конкретное назначение"

* #option
  * ^designation[0].language = #uz
  * ^designation[=].value = "Variant"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вариант"
