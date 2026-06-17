ValueSet: TaskStatusVS
Id: task-status-vs
Title: "Task Status VS"
Description: "ValueSet from Task Status codes"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/task-status-vs"
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(TaskStatusCS)

* include codes from system $task-status
