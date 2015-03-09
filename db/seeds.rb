# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

gender = AttributeGroup.create(
  group_name: "Gender"
)

gender.individual_attributes

# gender_attributes = [IndividualAttribute.new(
#     attribute_name: "Male"
#   ),
#   IndividualAttribute.new(
#     attribute_name: "Female"
#   ),
#   IndividualAttribute.new(
#     attribute_name: "Transgender"
#   ),
#   IndividualAttribute.new(
#     attribute_name: "Other/Decline To State"
#   )
# ]

# gender_attributes.each do |attribute|
#   gender.individual_attributes << attribute
# end

