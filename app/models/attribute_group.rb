class AttributeGroup < ActiveRecord::Base
  has_many :individual_attributes
  has_many :survey_attribute_groups
  has_many :surveys, :through => :survey_attribute_groups
end
