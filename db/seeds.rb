# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

############ MOCK COMPANIES ##################

facebook = Company.create(
  name: "Facebook",
  street_num: 123,
  street: "Facebook Street",
  city: "Palo Alto",
  state: "California",
  country: "USA"
  )

google = Company.create(
  name: "Google",
  street_num: 467,
  street: "Google Street",
  city: "Mountain View",
  state: "California",
  country: "USA"
  )

############ EMPLOYEE GROUPS ##################

all_employees = EmployeeType.create(type_name: "All Employees")

managers = EmployeeType.create(type_name: "Managers")

non_tech_workers = EmployeeType.create(type_name: "Non Tech Workers")

tech_workers = EmployeeType.create(type_name: "Tech Workers")

############ GENDER #####################

gender = AttributeGroup.create(
  group_name: "Gender Identity"
)

gender.individual_attributes << IndividualAttribute.new(
    attribute_name: "Man"
  )

gender.individual_attributes << IndividualAttribute.new(
    attribute_name: "Woman"
  )

gender.individual_attributes << IndividualAttribute.new(
    attribute_name: "Transgender"
  )

gender.individual_attributes << IndividualAttribute.new(
    attribute_name: "Intersex"
  )

gender.individual_attributes << IndividualAttribute.new(
    attribute_name: "Transsexual"
  )

gender.individual_attributes << IndividualAttribute.new(
    attribute_name: "MTF (male-to-female)"
  )

gender.individual_attributes << IndividualAttribute.new(
    attribute_name: "FTM (female-to-male)"
  )

gender.individual_attributes << IndividualAttribute.new(attribute_name: "GenderQueer")

################ RACE #####################

race = AttributeGroup.create(
  group_name: "Race"
)

race.individual_attributes << IndividualAttribute.new(attribute_name: "White")

race.individual_attributes << IndividualAttribute.new(attribute_name: "Hispanic")

race.individual_attributes << IndividualAttribute.new(attribute_name: "Asian")

race.individual_attributes << IndividualAttribute.new(attribute_name: "Black or African American")

race.individual_attributes << IndividualAttribute.new(attribute_name: "Native American or Alaska Native")

race.individual_attributes << IndividualAttribute.new(attribute_name: "Native Hawaiian or Other Pacific Islander")

race.individual_attributes << IndividualAttribute.new(attribute_name: "Two Or More")

################ ORIENTATION ################

sexual_orientation = AttributeGroup.create(
  group_name: "Sexual Orientation"
)

sexual_orientation.individual_attributes << IndividualAttribute.new(attribute_name: "Gay")

gender.individual_attributes << IndividualAttribute.new(
    attribute_name: "Lesbian"
  )

gender.individual_attributes << IndividualAttribute.new(
    attribute_name: "Bisexual"
  )

gender.individual_attributes << IndividualAttribute.new(
    attribute_name: "HeteroSexual"
  )
################ FAMILY STATUS ################

family_status = AttributeGroup.create(group_name: "Family Status")

family_status.individual_attributes << IndividualAttribute.new(attribute_name: "Single")

family_status.individual_attributes << IndividualAttribute.new(attribute_name: "Divorced")

family_status.individual_attributes << IndividualAttribute.new(attribute_name: "Married")

family_status.individual_attributes << IndividualAttribute.new(attribute_name: "Widowed")

family_status.individual_attributes << IndividualAttribute.new(attribute_name: "Partnered")

family_status.individual_attributes << IndividualAttribute.new(attribute_name: "Civil Unioned")


################ DISABILITY ################

disability = AttributeGroup.create(group_name: "Disability")

disability.individual_attributes << IndividualAttribute.new(attribute_name: "Physical Disability")

disability.individual_attributes << IndividualAttribute.new(attribute_name: "Psychiatric Disorder")

disability.individual_attributes << IndividualAttribute.new(attribute_name: "Chronic Health Condition(s)")

disability.individual_attributes << IndividualAttribute.new(attribute_name: "Multiple")

################ RELIGION ################

religion = AttributeGroup.create(group_name: "Religion")

## Question: "Religion(s) you identify with":

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Animist religions")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Baha'i")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Buddhism")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Cao Dai")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Chinese traditional religion")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Christianity")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Islam")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Neo-Paganism")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Nonreligious/agnostic/atheism")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Hinduism")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Jainism")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Juche")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Judaism")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Rastafari Movement")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Shinto")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Sikhism")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Spiritism")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Tenrikyo")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Unitarian Universalism")

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Unitarian Universalism")

################ EDUCATION ################

## Question: "What's your highest educational milestone?":

education = AttributeGroup.create(group_name: "Education")

education.individual_attributes << IndividualAttribute.new(attribute_name: "Some High School")

education.individual_attributes << IndividualAttribute.new(attribute_name: "High School Diploma")

education.individual_attributes << IndividualAttribute.new(attribute_name: "Some College")

education.individual_attributes << IndividualAttribute.new(attribute_name: "AA degree")

education.individual_attributes << IndividualAttribute.new(attribute_name: "BA/BS degree")

education.individual_attributes << IndividualAttribute.new(attribute_name: "Some graduate work")

education.individual_attributes << IndividualAttribute.new(attribute_name: "Graduate Degree (MA, MS, JD, etc)")

education.individual_attributes << IndividualAttribute.new(attribute_name: "Doctoral work")

education.individual_attributes << IndividualAttribute.new(attribute_name: "Doctoral degree (Ph.D. , MD)")

education.individual_attributes << IndividualAttribute.new(attribute_name: "Trade school diploma/certificate")