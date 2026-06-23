Invariant: uzcore-tsk-1
Description: "If Task.status is not completed, cancelled, or failed, and requestedPeriod.end is in the past, businessStatus should be set to overdue for SLA monitoring"
Severity: #warning
Expression: "(status != 'completed' and status != 'cancelled' and status != 'failed' and requestedPeriod.end.exists() and requestedPeriod.end < now()) implies businessStatus.coding.exists(code = 'overdue')"


Profile: UzCoreTask
Parent: Task
Id: uz-core-task
Title: "Uzbekistan Core Task"
Description: "Profile for Uz Core Task"

* ^experimental = true
* ^publisher = "Uzinfocom"
* ^status = #active

* identifier 0..1 MS
* code MS
* basedOn 1..1 MS
* basedOn ^short = "Request fulfilled by this task"
* basedOn only Reference(ServiceRequest)
* partOf MS
* partOf only Reference(Task)
* status 1..1 MS
* status ^short = "Composite task"
* status from TaskStatusVS (required)
* businessStatus MS
* intent 1..1 MS
* intent ^short = "Task performance level"
* intent from TaskIntentVS (required)
* focus 1..1 MS
* focus ^short = "What task is acting on"
* focus only Reference(ServiceRequest) 
* for MS
* for only Reference(Patient)
* owner MS
* owner only Reference(UZCoreOrganization or UZCorePractitionerRole)
* requestedPeriod MS
* requestedPeriod.start MS
* requestedPeriod.end  MS
* executionPeriod MS
* executionPeriod.start MS
* executionPeriod.end MS 

* obeys uzcore-tsk-1

Instance: example-task-family-doctor
InstanceOf: UzCoreTask
Usage: #example
Title: "Task 1 - Family Doctor Approval"
Description: "Task for family doctor approval"

// * identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/task-identifier"
// * identifier[0].value = "TASK-2026-001"

* code = task-codes-cs#approve-family-doctor "Family doctor approval"

* basedOn[0] = Reference(ServiceRequest/example-cbc-order)

* status = task-status-cs#in-progress "In Progress"

* businessStatus = task-business-status-cs#overdue "Overdue"

* intent = task-intent-cs#order "Order"

* focus = Reference(ServiceRequest/example-cbc-order)

* for = Reference(Patient/example-salim)

* owner = Reference(Organization/tashkent-diseases-hospital)

* requestedPeriod.start = "2026-03-05"
* requestedPeriod.end = "2026-03-06"
* executionPeriod.start = "2026-03-05"
* executionPeriod.end = "2026-03-06"


Instance: example-task-specialist
InstanceOf: UzCoreTask
Usage: #example
Title: "Task 2 - Specialist Approval"
Description: "Task for specialist approval"


* code = task-codes-cs#approve-specialist "Specialist approval"

* basedOn[0] = Reference(ServiceRequest/example-cbc-order)

* partOf[0] = Reference(Task/example-task-specialist)

* status = task-status-cs#requested "Requested"

* businessStatus = task-business-status-cs#overdue "Overdue"

* intent = task-intent-cs#order "Order"

* focus = Reference(ServiceRequest/example-cbc-order)

* for = Reference(Patient/example-david)

* owner = Reference(Organization/tashkent-diseases-hospital)

* requestedPeriod.start = "2026-03-06"
* requestedPeriod.end = "2026-03-07"
* executionPeriod.start = "2026-03-06"
* executionPeriod.end = "2026-03-07"



Instance: example-task-regional-commission
InstanceOf: UzCoreTask
Usage: #example
Title: "Task 3 - Regional Commission Approval"
Description: "Task for regional commission approval"

// * identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/task-identifier"
// * identifier[0].value = "TASK-2026-003"

* code = task-codes-cs#approve-regional-commission "Regional commission approval"

* basedOn[0] = Reference(ServiceRequest/example-cbc-order)

* partOf[0] = Reference(Task/example-task-regional-commission)

* status = task-status-cs#completed "Completed"

* businessStatus = task-business-status-cs#confirmed "Confirmed"

* intent = task-intent-cs#order "Order"

* focus = Reference(ServiceRequest/example-cbc-order)

* for = Reference(Patient/example-emma)

* owner = Reference(Organization/tashkent-diseases-hospital)

* requestedPeriod.start = "2026-03-07"
* requestedPeriod.end = "2026-03-08"
* executionPeriod.start = "2026-03-07"
* executionPeriod.end = "2026-03-08"


Instance: example-task-national-commission
InstanceOf: UzCoreTask
Usage: #example
Title: "Task 4 - National Commission Approval"
Description: "Task for national commission approval"

// * identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/task-identifier"
// * identifier[0].value = "TASK-2026-004"

* code = task-codes-cs#approve-national-commission "Republican commission approval"

* basedOn[0] = Reference(ServiceRequest/example-cbc-order)

* partOf[0] = Reference(Task/example-task-national-commission)

* status = task-status-cs#completed "Completed"

* businessStatus = task-business-status-cs#confirmed "Confirmed"

* intent = task-intent-cs#order "Order"

* focus = Reference(ServiceRequest/example-cbc-order)

* for = Reference(Patient/example-david)

* owner = Reference(Organization/tashkent-diseases-hospital)

* requestedPeriod.start = "2026-03-08"
* requestedPeriod.end = "2026-03-10"
* executionPeriod.start = "2026-03-08"
* executionPeriod.end = "2026-03-10"



Instance: example-task-hospitalization
InstanceOf: UzCoreTask
Usage: #example
Title: "Task 5 - Hospitalization Approval"
Description: "Task for hospitalization approval"

// * identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/task-identifier"
// * identifier[0].value = "TASK-2026-005"

* code = task-codes-cs#approve-hospitalization "Hospitalization approval"

* basedOn[0] = Reference(ServiceRequest/example-cbc-order)

* partOf[0] = Reference(Task/example-task-hospitalization)

* status = task-status-cs#completed "Completed"

* businessStatus = task-business-status-cs#completed "Completed"

* intent = task-intent-cs#order "Order"

* focus = Reference(ServiceRequest/example-cbc-order)

* for = Reference(Patient/example-emma)

* owner = Reference(Organization/tashkent-diseases-hospital)

* requestedPeriod.start = "2026-03-10"
* requestedPeriod.end = "2026-05-10"
* executionPeriod.start = "2026-03-10"
* executionPeriod.end = "2026-05-10"





Instance: example-task
InstanceOf: UzCoreTask
Usage: #example
Title: "UZ Core Task Example"
Description: "Example Task referencing a ServiceRequest in Uzbekistan Core profiles"

* id = "example-task"

// * identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/task-identifier"
// * identifier[0].value = "task-001"

* basedOn = Reference(ServiceRequest/example-cbc-order)

* status = #requested
* intent = #order

* code = task-codes-cs#approve-family-doctor "Family doctor approval"

* businessStatus = task-business-status-cs#on-hold "Suspended"

* focus = Reference(ServiceRequest/example-cbc-order)

* for = Reference(Patient/example-emma)
* authoredOn = "2026-01-01T10:00:00Z"