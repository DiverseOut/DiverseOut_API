class Response < ActiveRecord::Base
  belongs_to :company
  belongs_to :individual_attribute
  has_many :response_employee_types
  has_many :employee_types, :through => :response_employee_types
end
