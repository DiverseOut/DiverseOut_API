# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

############ COMPANIES ##################

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
  street: "Ampitheatre Parkway",
  city: "Mountain View",
  state: "California",
  country: "USA",
  zip_code: 94043,
  website_url: "https://www.google.com/",
  thumbnail_url: "http://assets.programmatic-italia.com/2014/12/Google.png",
  source: "http://www.google.com/diversity/at-google.html"
)

# Mock Company Test
vandelay = Company.create(
  name: "Vandelay Industries",
  id: 3,
  street_num: 123,
  street: "Fake Street",
  city: "New York",
  state: "New York",
  country: "USA",
  zip_code: 10001,
  website_url: "https://www.youtube.com/watch?v=OefQwYN6vbM",
  thumbnail_url: "http://www.tshirtbordello.com/images/Vandelay-Industries.gif"
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
  street: "New Montgomery Street",
  city: "San Francisco",
  state: "California",
  country: "USA",
  zip_code: 94105,
  website_url: "https://www.yelp.com/",
  thumbnail_url: "http://bbassembly.com/wp-content/uploads/2014/09/yelp-icon-transparent-150x150.png",
  source: "http://officialblog.yelp.com/2014/08/workforce-diversity-at-yelp.html"
)

linkedin = Company.create(
  name: "LinkedIn",
  id: 7,
  street_num: 2029,
  street: "Stierlin Court",
  city: "Mountain View",
  state: "California",
  country: "USA",
  zip_code: 94043,
  website_url: "https://www.linkedin.com/",
  thumbnail_url: "http://www.njsacc.org/wordpress/wp-content/uploads/transparent-Linkedin-logo-icon.png",
  source: "http://blog.linkedin.com/2014/06/12/linkedins-workforce-diversity/"
)

pandora = Company.create(
  name: "Pandora",
  id: 8,
  street_num: 2101,
  street_num_line_2:"#1650",
  street: "Webster Street",
  city: "Oakland",
  state: "California",
  country: "USA",
  zip_code: 94612,
  website_url: "https://www.pandora.com/",
  thumbnail_url: "http://angelstreetcapital.com/wp-content/uploads/pandora1.png",
  source: "http://www.pandora.com/careers/"
)

salesforce = Company.create(
  name: "Salesforce",
  id: 9,
  street_num: 1,
  street_num_line_2:"#300",
  street: "Market Street",
  city: "San Francisco",
  state: "California",
  country: "USA",
  zip_code: 94105,
  website_url: "https://www.salesforce.com/",
  thumbnail_url: "http://camara.org/wp-content/uploads/2014/11/Salesforce_Logo_RGB_8_13_14.png",
  source: "http://www.salesforce.com/company/careers/diversity-numbers.jsp"
)

ebay = Company.create(
  name: "eBay",
  id: 10,
  street_num: 2065,
  street: "Hamilton Avenue",
  city: "San Jose",
  state: "California",
  country: "USA",
  zip_code: 95125,
  website_url: "https://www.ebay.com/",
  thumbnail_url: "http://assets.cobaltnitra.com/teams/repository/export/v/1/899/ee8d05a5510058f9900146edef087/899ee8d05a5510058f9900146edef087.png",
  source: "http://blog.ebay.com/building-stronger-better-diverse-ebay/"
)

amazon = Company.create(
  name: "Amazon",
  id: 11,
  street_num: 410,
  street: "Terry Avenue North",
  city: "Seattle",
  state: "Washington",
  country: "USA",
  zip_code: 98109,
  website_url: "https://www.amazon.com/",
  thumbnail_url: "https://lh3.googleusercontent.com/---a1_7YqKoE/AAAAAAAAAAI/AAAAAAAAADw/Ppn51Ax9RRI/photo.jpg",
  source: "http://www.amazon.com/b/ref=tb_surl_diversity/?node=10080092011"
)

microsoft = Company.create(
  name: "Microsoft",
  id: 12,
  street_num: 1,
  street: "Microsoft Way",
  city: "Redmond",
  state: "Washington",
  country: "USA",
  zip_code: 98052,
  website_url: "https://www.microsoft.com/",
  thumbnail_url: "http://www.spheregen.com/wp-content/uploads/2015/01/microsoft_logo_2012.png",
  source: "http://news.microsoft.com/facts-about-microsoft/#EmploymentInfo"
)

yahoo = Company.create(
  name: "Yahoo",
  id: 13,
  street_num: 701,
  street: "First Avenue",
  city: "Sunnyvale",
  state: "California",
  country: "USA",
  zip_code: 94089,
  website_url: "https://www.yahoo.com/",
  thumbnail_url: "http://icons.iconarchive.com/icons/emey87/social-button/128/yahoo-icon.png",
  source: "http://yahoo.tumblr.com/post/89085398949/workforce-diversity-at-yahoo"
)

intel = Company.create(
  name: "Intel",
  id: 14,
  street_num: 2200,
  street: "Mission College Boulevard",
  city: "Santa Clara",
  state: "California",
  country: "USA",
  zip_code: 95054,
  website_url: "https://www.intel.com/",
  thumbnail_url: "http://tdumods.com/e107_plugins/greygallery2/content/2012_05_02_1335959652_360.png",
  source: "http://www.intel.com/content/www/us/en/company-overview/equal-employment-opportunity-employer-info-report.html"
)

groupon = Company.create(
  name: "Groupon",
  id: 15,
  street_num: 3101,
  street: "Park Boulevard",
  city: "Palo Alto",
  state: "California",
  country: "USA",
  zip_code: 94306,
  website_url: "https://www.groupon.com/",
  thumbnail_url: "http://www.accountcleaner.com/wp-content/uploads/2014/06/GroupON.png",
  source: "https://www.groupon.com/blog/cities/groupon-releases-diversity-data"
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

vandelay.admins << my_profile

############ EMPLOYEE GROUPS ##################

managers = EmployeeType.create(type_name: "Manager")

tech_workers = EmployeeType.create(type_name: "Tech Worker/Engineer")

############ GENDER #####################

gender = AttributeGroup.create(
  group_name: "Gender"
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

gender.individual_attributes << IndividualAttribute.new(
  attribute_name: "GenderQueer"
  )

gender.individual_attributes << IndividualAttribute.new(
  attribute_name: "Other/Not Disclosed"
  )

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

################ Age ################

age = AttributeGroup.create(group_name: "Age")

age.individual_attributes << IndividualAttribute.new(attribute_name: "18 or under")

age.individual_attributes << IndividualAttribute.new(attribute_name: "18-24")

age.individual_attributes << IndividualAttribute.new(attribute_name: "25-44")

age.individual_attributes << IndividualAttribute.new(attribute_name: "45-64")

age.individual_attributes << IndividualAttribute.new(attribute_name: "65+")

age.individual_attributes << IndividualAttribute.new(attribute_name: "29 or under")

age.individual_attributes << IndividualAttribute.new(attribute_name: "30-39")

age.individual_attributes << IndividualAttribute.new(attribute_name: "40+")

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

############ SEED RESPONSES (for Vandelay Industries) ##################

# GENDER
50.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

70.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Intersex").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Transsexual").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

# RACE
70.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

25.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

25.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

25.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Native American or Alaska Native").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

3.times do
  attribute = IndividualAttribute.where(attribute_name:"Native Hawaiian or Other Pacific Islander").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

# SEXUAL ORIENTATION

100.times do
  attribute = IndividualAttribute.where(attribute_name:"HeteroSexual").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Gay").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

5.times do
  attribute = IndividualAttribute.where(attribute_name:"Lesbian").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

3.times do
  attribute = IndividualAttribute.where(attribute_name:"Bisexual").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

# FAMILY STATUS

50.times do
  attribute = IndividualAttribute.where(attribute_name:"Married").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

20.times do
  attribute = IndividualAttribute.where(attribute_name:"Single").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

10.times do
  attribute = IndividualAttribute.where(attribute_name:"Divorced").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Widowed").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Civil Unioned").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

# DISABILITY


# RELIGION

50.times do
  attribute = IndividualAttribute.where(attribute_name:"Christianity").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Islam").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

15.times do
  attribute = IndividualAttribute.where(attribute_name:"Judaism").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Buddhism").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

10.times do
  attribute = IndividualAttribute.where(attribute_name:"Athiest").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

# EDUCATION

100.times do
  attribute = IndividualAttribute.where(attribute_name:"BA/BS degree").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Some graduate work").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

10.times do
  attribute = IndividualAttribute.where(attribute_name:"Graduate Degree").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

10.times do
  attribute = IndividualAttribute.where(attribute_name:"High School Diploma").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
end

10.times do
  attribute = IndividualAttribute.where(attribute_name:"Some College").first.id
  vandelay.responses << Response.create(individual_attribute_id: attribute)
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

############ SEED RESPONSES (for linkedin) ##################

#Gender
61.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  linkedin.responses << Response.create(individual_attribute_id: attribute)
end

39.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  linkedin.responses << Response.create(individual_attribute_id: attribute)
end

#Race
53.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  linkedin.responses << Response.create(individual_attribute_id: attribute)
end

38.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  linkedin.responses << Response.create(individual_attribute_id: attribute)
end

4.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  linkedin.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  linkedin.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Other").first.id
  linkedin.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Two Or More").first.id
  linkedin.responses << Response.create(individual_attribute_id: attribute)
end

############ SEED RESPONSES (for pandora) ##################

#Gender
51.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  pandora.responses << Response.create(individual_attribute_id: attribute)
end

49.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  pandora.responses << Response.create(individual_attribute_id: attribute)
end

#Race
71.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  pandora.responses << Response.create(individual_attribute_id: attribute)
end

12.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  pandora.responses << Response.create(individual_attribute_id: attribute)
end

7.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  pandora.responses << Response.create(individual_attribute_id: attribute)
end

3.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  pandora.responses << Response.create(individual_attribute_id: attribute)
end

6.times do
  attribute = IndividualAttribute.where(attribute_name:"Two Or More").first.id
  pandora.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Native Hawaiian or Other Pacific Islander").first.id
  pandora.responses << Response.create(individual_attribute_id: attribute)
end

############ SEED RESPONSES (for salesforce) ##################

#Gender
71.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  salesforce.responses << Response.create(individual_attribute_id: attribute)
end

29.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  salesforce.responses << Response.create(individual_attribute_id: attribute)
end

#Race
67.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  salesforce.responses << Response.create(individual_attribute_id: attribute)
end

22.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  salesforce.responses << Response.create(individual_attribute_id: attribute)
end

4.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  salesforce.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  salesforce.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Two Or More").first.id
  salesforce.responses << Response.create(individual_attribute_id: attribute)
end

3.times do
  attribute = IndividualAttribute.where(attribute_name:"Other").first.id
  salesforce.responses << Response.create(individual_attribute_id: attribute)
end

############ SEED RESPONSES (for ebay) ##################

#Gender
58.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  ebay.responses << Response.create(individual_attribute_id: attribute)
end

42.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  ebay.responses << Response.create(individual_attribute_id: attribute)
end

############ SEED RESPONSES (for amazon) ##################

#Gender
63.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  amazon.responses << Response.create(individual_attribute_id: attribute)
end

37.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  amazon.responses << Response.create(individual_attribute_id: attribute)
end

#Race
60.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  amazon.responses << Response.create(individual_attribute_id: attribute)
end

13.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  amazon.responses << Response.create(individual_attribute_id: attribute)
end

9.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  amazon.responses << Response.create(individual_attribute_id: attribute)
end

15.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  amazon.responses << Response.create(individual_attribute_id: attribute)
end

3.times do
  attribute = IndividualAttribute.where(attribute_name:"Other").first.id
  amazon.responses << Response.create(individual_attribute_id: attribute)
end

############ SEED RESPONSES (for microsoft) ##################

#Gender
72.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  microsoft.responses << Response.create(individual_attribute_id: attribute)
end

28.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  microsoft.responses << Response.create(individual_attribute_id: attribute)
end

#Race
59.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  microsoft.responses << Response.create(individual_attribute_id: attribute)
end

29.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  microsoft.responses << Response.create(individual_attribute_id: attribute)
end

5.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  microsoft.responses << Response.create(individual_attribute_id: attribute)
end

4.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  microsoft.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Two Or More").first.id
  microsoft.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Native Hawaiian or Other Pacific Islander").first.id
  microsoft.responses << Response.create(individual_attribute_id: attribute)
end

#Age
17.times do
  attribute = IndividualAttribute.where(attribute_name:"29 or under").first.id
  microsoft.responses << Response.create(individual_attribute_id: attribute)
end

37.times do
  attribute = IndividualAttribute.where(attribute_name:"30-39").first.id
  microsoft.responses << Response.create(individual_attribute_id: attribute)
end

46.times do
  attribute = IndividualAttribute.where(attribute_name:"40+").first.id
  microsoft.responses << Response.create(individual_attribute_id: attribute)
end

############ SEED RESPONSES (for yahoo) ##################

#Gender
62.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  yahoo.responses << Response.create(individual_attribute_id: attribute)
end

37.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  yahoo.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Other/Not Disclosed").first.id
  yahoo.responses << Response.create(individual_attribute_id: attribute)
end

#Race
50.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  yahoo.responses << Response.create(individual_attribute_id: attribute)
end

39.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  yahoo.responses << Response.create(individual_attribute_id: attribute)
end

4.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  yahoo.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  yahoo.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Two Or More").first.id
  yahoo.responses << Response.create(individual_attribute_id: attribute)
end

2.times do
  attribute = IndividualAttribute.where(attribute_name:"Other").first.id
  yahoo.responses << Response.create(individual_attribute_id: attribute)
end

############ SEED RESPONSES (for intel) ##################

#Gender
76.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  intel.responses << Response.create(individual_attribute_id: attribute)
end

24.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  intel.responses << Response.create(individual_attribute_id: attribute)
end

#Race
56.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  intel.responses << Response.create(individual_attribute_id: attribute)
end

31.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  intel.responses << Response.create(individual_attribute_id: attribute)
end

8.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  intel.responses << Response.create(individual_attribute_id: attribute)
end

4.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  intel.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Two Or More").first.id
  intel.responses << Response.create(individual_attribute_id: attribute)
end

1.times do
  attribute = IndividualAttribute.where(attribute_name:"Native American or Alaska Native").first.id
  intel.responses << Response.create(individual_attribute_id: attribute)
end


############ SEED RESPONSES (for groupon) ##################

#Gender
53.times do
  attribute = IndividualAttribute.where(attribute_name:"Male").first.id
  groupon.responses << Response.create(individual_attribute_id: attribute)
end

47.times do
  attribute = IndividualAttribute.where(attribute_name:"Female").first.id
  groupon.responses << Response.create(individual_attribute_id: attribute)
end

#Race
71.times do
  attribute = IndividualAttribute.where(attribute_name:"White").first.id
  groupon.responses << Response.create(individual_attribute_id: attribute)
end

15.times do
  attribute = IndividualAttribute.where(attribute_name:"Asian").first.id
  groupon.responses << Response.create(individual_attribute_id: attribute)
end

5.times do
  attribute = IndividualAttribute.where(attribute_name:"Hispanic").first.id
  groupon.responses << Response.create(individual_attribute_id: attribute)
end

4.times do
  attribute = IndividualAttribute.where(attribute_name:"Black or African American").first.id
  groupon.responses << Response.create(individual_attribute_id: attribute)
end

4.times do
  attribute = IndividualAttribute.where(attribute_name:"Other").first.id
  groupon.responses << Response.create(individual_attribute_id: attribute)
end