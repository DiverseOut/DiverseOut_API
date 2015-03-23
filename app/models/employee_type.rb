class EmployeeType < ActiveRecord::Base
  has_many :response_employee_types
  has_many :responses, :through => :response_employee_types
end
