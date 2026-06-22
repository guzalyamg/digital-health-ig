ValueSet: ResourceTypesVS
Id: resource-types-vs
Title: "Resource Types VS"
Description: "ValueSet for resource types used in ActivityDefinition kind element"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/resource-types-vs"


* ^experimental = true
* ^status = #active
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ResourceTypesCS)

* include codes from system $resource-types
