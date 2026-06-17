Profile: UZCoreServiceRequest
Parent: ServiceRequest
Id: uz-core-service-request
Title: "Uz Core Service Request"
Description: "Uz Core Profile for service requests in Uzbekistan Core profiles"
* ^experimental = true
* ^status = #active

* identifier 1..* MS
* identifier ^short = "Identifiers assigned to this order"
* requisition MS
* requisition ^short = "A common identifier used to group multiple ServiceRequest resources created as part of a single referral, visit, or a single specimen collection episode."
* status MS
* status ^short = "The status of a service order."
* status from ServiceRequestStatusVS (required)
* intent MS
* intent ^short = "Indicates the level of obligation and intent of the service request, specifying whether the request represents an official order to be performed."
* intent from ServiceIntentVS (required)
* doNotPerform MS
* doNotPerform ^short = "Indicates that the service described by the ServiceRequest should not be performed. "
* code MS
* code ^short = "Specifies the laboratory test, panel, or service being requested. The codes used represent orderable laboratory services and must not be used for analytical result observations."
* code from SRLabResearchsVS (required)
* subject MS
* subject ^short = "The patient for whom the laboratory referral or order is issued. This element identifies the individual who is the subject of the requested laboratory investigation."
* subject only Reference(UZCorePatient or UZCoreLocation)
* encounter MS
* encounter ^short = "The healthcare encounter during which the laboratory referral or order was created or to which the laboratory investigation is related. This element provides clinical context for the ServiceRequest, such as an outpatient visit or inpatient hospitalization."
* encounter only Reference(UZCoreEncounter)
* occurrence[x] MS
* occurrence[x] ^short = "This element is used to indicate the intended or actual timing of the laboratory service"
* authoredOn 1..1 MS
* authoredOn ^short = "The date and time when the ServiceRequest was authored and formally issued by the requester."
* requester MS
* requester ^short = "A reason to a Condition or other clinical resource that represents the medical justification for the laboratory referral, such as a diagnosis coded using ICD-10. This allows structured representation of diagnosis details including onset date and clinical status."
// * requester from $icd-10
* requester only Reference(UZCorePractitioner or UZCorePractitioner or UZCoreOrganization or UZCorePatient or UZCoreRelatedPerson)
* reason 0..1 MS
* reason ^short = "A reason to a Condition or other clinical resource that represents the medical justification for the laboratory referral, such as a diagnosis coded using ICD-10. This allows structured representation of diagnosis details including onset date and clinical status."
* reason from $icd-10-vs (required)
* insurance MS
* insurance ^short = "Insurance coverage or funding source applicable to the requested service."
* supportingInfo MS
* supportingInfo ^short = "Additional clinical or administrative information supporting or justifying the requested service." 
* supportingInfo only CodeableReference(UZCoreServiceRequest)
* specimen MS
* specimen ^short = "The specimen or specimens to be analyzed as part of the requested laboratory service." 
* specimen only Reference(UZCoreSpecimen)
* note MS
* note ^short = "Doctor's comment or conclution upon referral" 


Instance: example-uz-core-service-request
InstanceOf: UZCoreServiceRequest
Usage: #example
Title: "UZ Core ServiceRequest Example"
Description: "Example of a ServiceRequest for a laboratory test order in Uzbekistan Core profiles"          

* identifier.value = "12345"
* identifier.system = "http://example.com/serviceRequest"
* status = #active
* intent = #order
* code =  $service-request-status#lab-A "CBC panel"
* subject = Reference(Patient/example-salim)
* authoredOn = "2026-01-01T10:00:00Z"


