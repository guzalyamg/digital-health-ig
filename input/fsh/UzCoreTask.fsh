Profile: UzCoreTask
Parent: Task
Id: uz-core-task
Title: "Uzbekistan Core Task"
Description: "Profile for Uz Core Task"

* identifier 0..1 MS
* code MS
* basedOn 1..1 MS
* basedOn ^short = "Request fulfilled by this task"
* partOf MS
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
* owner MS
* owner only Reference(UZCoreOrganization or UZCorePractitionerRole)
* requestedPeriod MS
* requestedPeriod.start MS
* requestedPeriod.end  MS
* executionPeriod MS
* executionPeriod.start MS
* executionPeriod.end MS 



Instance: example-task-1
InstanceOf: UzCoreTask
Usage: #example
Title: "Task 1 - Family Doctor Approval"
Description: "Task for family doctor approval"

// * identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/task-identifier"
// * identifier[0].value = "TASK-2026-001"

* code = task-codes-cs#approve-family-doctor "Family doctor approval"

* basedOn[0] = Reference(ServiceRequest/example-uz-core-service-request)

* status = task-status-cs#in-progress "In Progress"

* businessStatus = task-business-status-cs#active "Active"

* intent = task-intent-cs#order "Order"

* focus = Reference(ServiceRequest/example-uz-core-service-request)

* for = Reference(Patient/example-salim)

* owner = Reference(Organization/example-organization)

* requestedPeriod.start = "2026-03-05"
* requestedPeriod.end = "2026-03-06"
* executionPeriod.start = "2026-03-05"
* executionPeriod.end = "2026-03-06"


Instance: example-task-2
InstanceOf: UzCoreTask
Usage: #example
Title: "Task 2 - Specialist Approval"
Description: "Task for specialist approval"

// * identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/task-identifier"
// * identifier[0].value = "TASK-2026-002"

* code = task-codes-cs#approve-specialist "Specialist approval"

* basedOn[0] = Reference(ServiceRequest/example-uz-core-service-request)

* partOf[0] = Reference(Task/example-task-1)

* status = task-status-cs#requested "Requested"

* businessStatus = task-business-status-cs#active "Active"

* intent = task-intent-cs#order "Order"

* focus = Reference(ServiceRequest/example-uz-core-service-request)

* for = Reference(Patient/example-salim)

* owner = Reference(Organization/example-organization)

* requestedPeriod.start = "2026-03-06"
* requestedPeriod.end = "2026-03-07"
* executionPeriod.start = "2026-03-06"
* executionPeriod.end = "2026-03-07"



Instance: example-task-3
InstanceOf: UzCoreTask
Usage: #example
Title: "Task 3 - Regional Commission Approval"
Description: "Task for regional commission approval"

// * identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/task-identifier"
// * identifier[0].value = "TASK-2026-003"

* code = task-codes-cs#approve-regional-commission "Regional commission approval"

* basedOn[0] = Reference(ServiceRequest/example-uz-core-service-request)

* partOf[0] = Reference(Task/example-task-2)

* status = task-status-cs#completed "Completed"

* businessStatus = task-business-status-cs#confirmed "Confirmed"

* intent = task-intent-cs#order "Order"

* focus = Reference(ServiceRequest/example-uz-core-service-request)

* for = Reference(Patient/example-salim)

* owner = Reference(Organization/example-organization)

* requestedPeriod.start = "2026-03-07"
* requestedPeriod.end = "2026-03-08"
* executionPeriod.start = "2026-03-07"
* executionPeriod.end = "2026-03-08"


Instance: example-task-4
InstanceOf: UzCoreTask
Usage: #example
Title: "Task 4 - National Commission Approval"
Description: "Task for national commission approval"

// * identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/task-identifier"
// * identifier[0].value = "TASK-2026-004"

* code = task-codes-cs#approve-national-commission "Republican commission approval"

* basedOn[0] = Reference(ServiceRequest/example-uz-core-service-request)

* partOf[0] = Reference(Task/example-task-3)

* status = task-status-cs#completed "Completed"

* businessStatus = task-business-status-cs#confirmed "Confirmed"

* intent = task-intent-cs#order "Order"

* focus = Reference(ServiceRequest/example-uz-core-service-request)

* for = Reference(Patient/example-salim)

* owner = Reference(Organization/example-organization)

* requestedPeriod.start = "2026-03-08"
* requestedPeriod.end = "2026-03-10"
* executionPeriod.start = "2026-03-08"
* executionPeriod.end = "2026-03-10"



Instance: example-task-5
InstanceOf: UzCoreTask
Usage: #example
Title: "Task 5 - Hospitalization Approval"
Description: "Task for hospitalization approval"

// * identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/task-identifier"
// * identifier[0].value = "TASK-2026-005"

* code = task-codes-cs#approve-hospitalization "Hospitalization approval"

* basedOn[0] = Reference(ServiceRequest/example-uz-core-service-request)

* partOf[0] = Reference(Task/example-task-4)

* status = task-status-cs#completed "Completed"

* businessStatus = task-business-status-cs#completed "Completed"

* intent = task-intent-cs#order "Order"

* focus = Reference(ServiceRequest/example-uz-core-service-request)

* for = Reference(Patient/example-salim)

* owner = Reference(Organization/example-organization)

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

* basedOn = Reference(ServiceRequest/example-uz-core-service-request)

* status = #requested
* intent = #order

* code = task-codes-cs#approve-family-doctor "Approve Family Doctor"

* businessStatus = task-business-status-cs#on-hold "Suspended"

* focus = Reference(ServiceRequest/example-uz-core-service-request)

* for = Reference(Patient/example-salim)
* authoredOn = "2026-01-01T10:00:00Z"

