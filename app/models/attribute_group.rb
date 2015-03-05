class AttributeGroup < ActiveRecord::Base
  has_many :survey_attribute_groups
  has_many :attributes
  has_many :surveys, :through => :survey_attribute_groups
end
