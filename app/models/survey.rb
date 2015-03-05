class Survey < ActiveRecord::Base
  belongs_to :company
  has_many :survey_attribute_groups
  has_many :attribute_groups, :through => :survey_attribute_groups
end
