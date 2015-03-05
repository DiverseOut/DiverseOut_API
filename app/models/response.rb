class Response < ActiveRecord::Base
  belongs_to :company
  belongs_to :attribute
  belongs_to :employee_type
end
