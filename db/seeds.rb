# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

############ MOCK COMPANIES ##################

facebook = Company.create(
  name: "Facebook",
  id: 1,
  street_num: 1,
  street: "Hacker Way",
  city: "Palo Alto",
  state: "California",
  country: "USA",
  zip_code: 94025,
  website_url: "https://www.facebook.com/",
  thumbnail_url: "http://a3.mzstatic.com/us/r30/Purple1/v4/1d/fe/dd/1dfedd84-5010-9274-b60b-65e1d04438e1/icon320x320.jpeg",
  source: "http://newsroom.fb.com/news/2014/06/building-a-more-diverse-facebook/"
)

google = Company.create(
  name: "Google",
  id: 2,
  street_num: 1600,
  street: "Ampitheatre PArkway",
  city: "Mountain View",
  state: "California",
  country: "USA",
  zip_code: 94043,
  website_url: "https://www.google.com/",
  thumbnail_url: "http://assets.programmatic-italia.com/2014/12/Google.png",
  source: "http://www.google.com/diversity/at-google.html"
)

prestige_worldwide = Company.create(
  name: "Prestige Worldwide",
  id: 3,
  street_num: 123,
  street: "Fake Street",
  city: "San Francisco",
  state: "California",
  country: "USA",
  zip_code: 94043,
  website_url: "https://www.youtube.com/watch?v=ciS914MaDl8",
  thumbnail_url: "http://ih3.redbubble.net/image.8353337.1954/sticker,375x360.u2.png"
)

apple = Company.create(
  name: "Apple",
  id: 4,
  street_num: 1,
  street: "Infinite Loop",
  city: "Cupertino",
  state: "California",
  country: "USA",
  zip_code: 94051,
  website_url: "https://www.apple.com/",
  thumbnail_url: "http://insideunmannedsystems.com/wp-content/uploads/2015/02/Apple_gray_logo.png",
  source: "https://apple.com/diversity"
)

twitter = Company.create(
  name: "Twitter",
  id: 5,
  street_num: 1355,
  street_num_line_2: "#900",
  street: "Market Street",
  city: "San Francisco",
  state: "California",
  country: "USA",
  zip_code: 94103,
  website_url: "https://www.twitter.com/",
  thumbnail_url: "http://www.h3dwallpapers.com/wp-content/uploads/2014/11/Twitter_logo_transparent.jpg",
  source: "https://blog.twitter.com/2014/building-a-twitter-we-can-be-proud-of"
)

yelp = Company.create(
  name: "Yelp",
  id: 6,
  street_num: 140,
  street: "New Montgomery",
  city: "San Francisco",
  state: "California",
  country: "USA",
  zip_code: 94105,
  website_url: "https://www.yelp.com/",
  thumbnail_url: "http://www.technet.org/wp-content/uploads/2010/09/yelpLogoHires-sm.jpg",
  source: "http://officialblog.yelp.com/2014/08/workforce-diversity-at-yelp.html"
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

race.individual_attributes << IndividualAttribute.new(attribute_name: "Other")

race.individual_attributes << IndividualAttribute.new(attribute_name: "Undeclared")


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

############ SEED RESPONSES (for Facebook) ##################

#Gender
69.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  facebook.responses << Response.create(individual_attribute_id: attribute)
end

31.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  facebook.responses << Response.create(individual_attribute_id: attribute)
end

#Race
57.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  facebook.responses << Response.create(individual_attribute_id: attribute)
end

34.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  facebook.responses << Response.create(individual_attribute_id: attribute)
end

4.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  facebook.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  facebook.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Two Or More").first.id
  facebook.responses << Response.create(individual_attribute_id: attribute)
end

############ SEED RESPONSES (for Google) ##################

#Gender

70.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  google.responses << Response.create(individual_attribute_id: attribute)
end

30.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  google.responses << Response.create(individual_attribute_id: attribute)
end

#Race
61.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  google.responses << Response.create(individual_attribute_id: attribute)
end

30.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  google.responses << Response.create(individual_attribute_id: attribute)
end

3.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  google.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  google.responses << Response.create(individual_attribute_id: attribute)
end

4.times do
  attribute = IndividualAttribute.where(attribute_name:"Two Or More").first.id
  google.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Other").first.id
  google.responses << Response.create(individual_attribute_id: attribute)
end


############ SEED RESPONSES (for apple) ##################

#Gender

70.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  apple.responses << Response.create(individual_attribute_id: attribute)
end

30.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  apple.responses << Response.create(individual_attribute_id: attribute)
end

#Race
55.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  apple.responses << Response.create(individual_attribute_id: attribute)
end

15.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  apple.responses << Response.create(individual_attribute_id: attribute)
end

11.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  apple.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  apple.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Two Or More").first.id
  apple.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Other").first.id
  apple.responses << Response.create(individual_attribute_id: attribute)
end

9.times do
  attribute = IndividualAttribute.where(attribute_name:"Undeclared").first.id
  apple.responses << Response.create(individual_attribute_id: attribute)
end

############ SEED RESPONSES (for twitter) ##################

#Gender
70.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  twitter.responses << Response.create(individual_attribute_id: attribute)
end

30.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  twitter.responses << Response.create(individual_attribute_id: attribute)
end

#Race
59.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  twitter.responses << Response.create(individual_attribute_id: attribute)
end

29.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  twitter.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  twitter.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  twitter.responses << Response.create(individual_attribute_id: attribute)
end

3.times do
  attribute = IndividualAttribute.where(attribute_name:"Two Or More").first.id
  twitter.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Other").first.id
  twitter.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Native American or Alaska Native").first.id
  twitter.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Native Hawaiian or Other Pacific Islander").first.id
  twitter.responses << Response.create(individual_attribute_id: attribute)
end

############ SEED RESPONSES (for yelp) ##################

#Gender
53.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  yelp.responses << Response.create(individual_attribute_id: attribute)
end

47.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  yelp.responses << Response.create(individual_attribute_id: attribute)
end

#Race
71.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  yelp.responses << Response.create(individual_attribute_id: attribute)
end

12.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  yelp.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  yelp.responses << Response.create(individual_attribute_id: attribute)
end

4.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  yelp.responses << Response.create(individual_attribute_id: attribute)
end

6.times do
  attribute = IndividualAttribute.where(attribute_name:"Two Or More").first.id
  yelp.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Other").first.id
  yelp.responses << Response.create(individual_attribute_id: attribute)
end
