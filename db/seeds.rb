# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

############ MOCK COMPANIES ##################

facebook = Company.create(
  name: "Facebook",
  id: 1,
  street_num: 123,
  street_num_line_2: "Suite C",
  street: "Facebook Street",
  city: "Palo Alto",
  state: "California",
  country: "USA",
  website_url: "https://www.facebook.com/",
  thumbnail_url: "http://a3.mzstatic.com/us/r30/Purple1/v4/1d/fe/dd/1dfedd84-5010-9274-b60b-65e1d04438e1/icon320x320.jpeg"
)

google = Company.create(
  name: "Google",
  id: 2,
  street_num: 467,
  street_num_line_2: "Suite D",
  street: "Google Street",
  city: "Mountain View",
  state: "California",
  country: "USA",
  website_url: "https://www.google.com/",
  thumbnail_url: "http://assets.programmatic-italia.com/2014/12/Google.png"
)

prestige_worldwide = Company.create(
  name: "Prestige Worldwide",
  id: 3,
  street_num: 123,
  street: "Fake Street",
  city: "San Francisco",
  state: "California",
  country: "USA",
  website_url: "https://www.youtube.com/watch?v=ciS914MaDl8",
  thumbnail_url: "http://ih3.redbubble.net/image.8353337.1954/sticker,375x360.u2.png"
)

############ ADMINS ##################

my_profile = Admin.create(
  company_id: 3,
  first_name: "Philip",
  last_name: "Riley",
  job_title: "Benevolent Dictator",
  email: "hiriley@comcast.net",
  password_hash: "c936396328b437d979c2fc616d81433cba1c8247"
)

prestige_worldwide.admins << my_profile

############ EMPLOYEE GROUPS ##################

managers = EmployeeType.create(type_name: "Manager")

tech_workers = EmployeeType.create(type_name: "Tech Worker/Engineer")

############ GENDER #####################

gender = AttributeGroup.create(
  group_name: "Gender Identity"
)

gender.individual_attributes << IndividualAttribute.new(
    attribute_name: "Male"
  )

gender.individual_attributes << IndividualAttribute.new(
    attribute_name: "Female"
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

sexual_orientation.individual_attributes << IndividualAttribute.new(
    attribute_name: "Lesbian"
  )

sexual_orientation.individual_attributes << IndividualAttribute.new(
    attribute_name: "Bisexual"
  )

sexual_orientation.individual_attributes << IndividualAttribute.new(
    attribute_name: "HeteroSexual"
  )

sexual_orientation.individual_attributes << IndividualAttribute.new(
    attribute_name: "Queer"
  )

sexual_orientation.individual_attributes << IndividualAttribute.new(
    attribute_name: "Asexual"
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

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Athiest")

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

religion.individual_attributes << IndividualAttribute.new(attribute_name: "Other")

################ EDUCATION ################

## Question: "What's your highest educational milestone?":

education = AttributeGroup.create(group_name: "Education")

education.individual_attributes << IndividualAttribute.new(attribute_name: "Some High School")

education.individual_attributes << IndividualAttribute.new(attribute_name: "High School Diploma")

education.individual_attributes << IndividualAttribute.new(attribute_name: "Some College")

education.individual_attributes << IndividualAttribute.new(attribute_name: "AA degree")

education.individual_attributes << IndividualAttribute.new(attribute_name: "BA/BS degree")

education.individual_attributes << IndividualAttribute.new(attribute_name: "Some graduate work")

education.individual_attributes << IndividualAttribute.new(attribute_name: "Graduate Degree")

education.individual_attributes << IndividualAttribute.new(attribute_name: "Doctoral work")

education.individual_attributes << IndividualAttribute.new(attribute_name: "Doctoral degree (Ph.D. , MD)")

education.individual_attributes << IndividualAttribute.new(attribute_name: "Trade school diploma/certificate")


############ SEED RESPONSES (for Prestige Worldwide) ##################

# GENDER
50.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

70.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Intersex").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Transsexual").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

# RACE
70.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

25.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

25.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

25.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Native American or Alaska Native").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

3.times do
  attribute = IndividualAttribute.where(attribute_name:"Native Hawaiian or Other Pacific Islander").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

# SEXUAL ORIENTATION

100.times do
  attribute = IndividualAttribute.where(attribute_name:"HeteroSexual").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Gay").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

5.times do
  attribute = IndividualAttribute.where(attribute_name:"Lesbian").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

3.times do
  attribute = IndividualAttribute.where(attribute_name:"Bisexual").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

# FAMILY STATUS

50.times do
  attribute = IndividualAttribute.where(attribute_name:"Married").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

20.times do
  attribute = IndividualAttribute.where(attribute_name:"Single").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

10.times do
  attribute = IndividualAttribute.where(attribute_name:"Divorced").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Widowed").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Civil Unioned").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

# DISABILITY


# RELIGION

50.times do
  attribute = IndividualAttribute.where(attribute_name:"Christianity").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Islam").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

15.times do
  attribute = IndividualAttribute.where(attribute_name:"Judaism").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Buddhism").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

10.times do
  attribute = IndividualAttribute.where(attribute_name:"Athiest").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

# EDUCATION

100.times do
  attribute = IndividualAttribute.where(attribute_name:"BA/BS degree").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Some graduate work").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

10.times do
  attribute = IndividualAttribute.where(attribute_name:"Graduate Degree").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

10.times do
  attribute = IndividualAttribute.where(attribute_name:"High School Diploma").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end

10.times do
  attribute = IndividualAttribute.where(attribute_name:"Some College").first.id
  prestige_worldwide.responses << Response.create(individual_attribute_id: attribute)
end