class Company < ActiveRecord::Base
  has_many :admins
  has_many :surveys
  has_many :responses
end
