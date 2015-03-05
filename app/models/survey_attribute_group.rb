class SurveyAttributeGroup < ActiveRecord::Base
  belongs_to :survey
  belongs_to :attribute_group
end
