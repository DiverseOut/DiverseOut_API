class ResponseEmployeeType < ActiveRecord::Base
  belongs_to :response
  belongs_to :employee_type
end
