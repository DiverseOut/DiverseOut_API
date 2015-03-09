class Response < ActiveRecord::Base
  belongs_to :company
  belongs_to :individual_attribute
  belongs_to :employee_type
end
