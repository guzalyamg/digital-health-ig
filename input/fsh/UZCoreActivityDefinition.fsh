Profile: UZCoreActivityDefinition
Parent: ActivityDefinition
Id: uz-core-activity-definition
Title: "UZ Core ActivityDefinition"
Description: "Uzbekistan Core ActivityDefinition profile, used to represent reusable definitions of activities to be performed in the context of Uzbekistan healthcare"
* ^experimental = true
* ^status = #active


* url MS
* identifier MS
* version MS
* versionAlgorithm[x] MS
* versionAlgorithm[x] from VersionAlgorithmVS (extensible)
* name MS
* title MS
* status 1..1 MS
* status ^short = "draft | active | retired | unknown"
* status from PublicationStatusVS (required)
* subject[x] MS
* date MS
* publisher MS
* description MS
* effectivePeriod MS
* kind MS
* kind from ResourceTypesVS (required)
* profile MS
* code MS
* intent MS
* intent from ServiceIntentVS (required)
* priority MS
* priority from RequestPriorityVS (required)
* doNotPerform MS
* timing[x] MS
* participant MS
* participant.type MS
* participant.type from ActionParticipantTypeVS (required)
* participant.typeCanonical MS
* participant.typeReference MS
* participant.role MS
* participant.function MS
* product[x] MS
* quantity MS
* dosage MS
* bodySite MS
* bodySite from BodySiteVS (example)
* specimenRequirement MS
* specimenRequirement 0..1
* observationRequirement MS
* observationResultRequirement MS
* transform MS
* dynamicValue MS
* dynamicValue 0..1
* dynamicValue.path MS
* dynamicValue.expression MS





Instance: example-uz-core-activity-definition
InstanceOf: UZCoreActivityDefinition
Usage: #example
Title: "Example UZ Core ActivityDefinition - BCG Vaccination"
Description: "Example of an activity definition for BCG vaccination in Uzbekistan"

* language = #uz

* url = "https://dhp.uz/fhir/core/ActivityDefinition/bcg-vaccination"
* version = "1.0.0"
* name = "BCGVaccination"
* title = "BCG emlash"
* status = #active
* date = "2026-01-01"
* publisher = "Uzinfocom"
* description = "BCG (sil kasalligiga qarshi) emlash uchun faoliyat ta'rifi"

* kind = $fhir-types#ImmunizationRecommendation

* intent = $request-intent#proposal

* priority = $request-priority#routine

* participant[0].type = $action-participant-type#practitioner
* participant[0].role = $sct#309343006 "Doctor"

* bodySite = $sct#368210008 "Left arm"

* dosage[0].doseAndRate[0].doseQuantity.value = 0.05
* dosage[0].doseAndRate[0].doseQuantity.unit = "mL"
* dosage[0].doseAndRate[0].doseQuantity.system = "http://unitsofmeasure.org"
* dosage[0].doseAndRate[0].doseQuantity.code = #mL
