Profile: UZCoreOrganization
Parent: Organization
Id: uz-core-organization
Title: "UZ Core Organization"
Description: "Uzbekistan Core Organization profile, used to represent healthcare organizations in Uzbekistan"
* ^experimental = true
* ^status = #active

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slicing of organization identifiers by system"
* identifier contains
    taxId      0..1 MS and
    argosId    0..1 MS and
    shifId     0..1 MS and
    minzdravId 0..1 MS

* identifier[taxId]
  * use = #official
  * type = $identifier-type#TAX
  * system 1..1 MS
  * system = $organization-tax-id-system
  * value 1..1 MS

* identifier[argosId]
  * use = #official
  * type = $identifier-type#XX
  * system 1..1 MS
  * system = $organization-argos-id-system
  * value 1..1 MS

* identifier[shifId]
  * use = #official
  * type = $identifier-type#NIIP
  * system 1..1 MS
  * system = $organization-shif-id-system
  * value 1..1 MS

* identifier[minzdravId]
  * use = #official
  * type = $identifier-type#XX
  * system 1..1 MS
  * system = "https://dhp.uz/fhir/core/sid/org/uz/minzdrav"
  * value 1..1 MS

* active MS


* type MS
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open
* type ^slicing.ordered = false
* type ^slicing.description = "Slicing of organization type by coding system"
* type contains
    organizationType           0..* MS and
    subordinationGroup         0..1 MS and
    nomenclatureGroup          0..1 MS and
    organizationalStructure    0..1 MS and
    organizationalServiceGroup 0..* MS and
    specialization             0..* MS and
    withoutLegalStatus         0..1 MS and
    organizationGrouping       0..1 MS

* type[organizationType] from OrganizationTypeVS (required)
* type[organizationType].coding 1..* MS
* type[organizationType].coding.system 1..1 MS
* type[organizationType].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/organization-type-cs"
* type[organizationType].coding.code 1..1 MS

* type[subordinationGroup] from OrganizationalSubordinationGroupVS (required)
* type[subordinationGroup].coding 1..* MS
* type[subordinationGroup].coding.system 1..1 MS
* type[subordinationGroup].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-subordination-group-cs"
* type[subordinationGroup].coding.code 1..1 MS

* type[nomenclatureGroup] from NomenclatureGroupVS (required)
* type[nomenclatureGroup].coding 1..* MS
* type[nomenclatureGroup].coding.system 1..1 MS
* type[nomenclatureGroup].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/nomenclature-group-cs"
* type[nomenclatureGroup].coding.code 1..1 MS

* type[organizationalStructure] from OrganizationalStructureVS (required)
* type[organizationalStructure].coding 1..* MS
* type[organizationalStructure].coding.system 1..1 MS
* type[organizationalStructure].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-structure-cs"
* type[organizationalStructure].coding.code 1..1 MS

* type[organizationalServiceGroup] from OrganizationalServiceGroupVS (required)
* type[organizationalServiceGroup].coding 1..* MS
* type[organizationalServiceGroup].coding.system 1..1 MS
* type[organizationalServiceGroup].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-service-group-cs"
* type[organizationalServiceGroup].coding.code 1..1 MS

* type[specialization] from OrganizationalSpecializationVS (required)
* type[specialization].coding 1..* MS
* type[specialization].coding.system 1..1 MS
* type[specialization].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-specialization-cs"
* type[specialization].coding.code 1..1 MS

* type[withoutLegalStatus] from OrganizationalSubordinationInstitutionVS (required)
* type[withoutLegalStatus].coding 1..* MS
* type[withoutLegalStatus].coding.system 1..1 MS
* type[withoutLegalStatus].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-subordination-institution-cs"
* type[withoutLegalStatus].coding.code 1..1 MS

* type[organizationGrouping] from OrganizationGroupVS (required)
* type[organizationGrouping].coding 1..* MS
* type[organizationGrouping].coding.system 1..1 MS
* type[organizationGrouping].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/organization-group-cs"
* type[organizationGrouping].coding.code 1..1 MS

* name MS
* insert MultilingualName(Organization)

* contact MS


* partOf MS
* partOf only Reference(UZCoreOrganization)


* endpoint MS


Instance: example-uz-core-organization
InstanceOf: UZCoreOrganization
Usage: #example
Title: "Example UZ Core Organization - Republican Oncology Center"
Description: "Example of a healthcare organization in Uzbekistan - Republican Oncology Center"

* language = #uz

* identifier[taxId].use = #official
* identifier[taxId].type = $identifier-type#TAX "Tax ID number"
* identifier[taxId].system = $organization-tax-id-system
* identifier[taxId].value = "203108505"

* identifier[argosId].use = #official
* identifier[argosId].type = $identifier-type#XX "Organization Identifier"
* identifier[argosId].system = $organization-argos-id-system
* identifier[argosId].value = "22640"

* active = true

* type[organizationType].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/organization-type-cs"
* type[organizationType].coding.code = #I
* type[organizationType].coding.display = "Boshqaruv bo'yicha taqsimlanishi"

* type[subordinationGroup].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-subordination-group-cs"
* type[subordinationGroup].coding.code = #I_1
* type[subordinationGroup].coding.display = "Respublika tassarufidagi muassasalari"

* type[nomenclatureGroup].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/nomenclature-group-cs"
* type[nomenclatureGroup].coding.code = #II_100
* type[nomenclatureGroup].coding.display = "Shifoxona muassasalari"

* type[organizationalStructure].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-structure-cs"
* type[organizationalStructure].coding.code = #146
* type[organizationalStructure].coding.display = "Shifoxonasi"

* type[organizationalServiceGroup].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-service-group-cs"
* type[organizationalServiceGroup].coding.code = #III_200
* type[organizationalServiceGroup].coding.display = "Statsionar boʻlimi mavjud"

* type[specialization].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-specialization-cs"
* type[specialization].coding.code = #145
* type[specialization].coding.display = "Kattalar onkologiyasi"

* name = "Respublika Onkologiya Markazi"
* name.extension[translation][0].extension[lang].valueCode = #ru
* name.extension[translation][0].extension[content].valueString = "Республиканский онкологический центр"
* name.extension[translation][+].extension[lang].valueCode = #en
* name.extension[translation][=].extension[content].valueString = "Republican Oncology Center"
