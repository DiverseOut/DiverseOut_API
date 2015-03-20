class Admin < ActiveRecord::Base
  belongs_to :company

  # include BCrypt

  #   def password
  #     @password ||= Password.new(password_hash)
  #   end

  #   def password=(new_password)
  #     @password = Password.create(new_password)
  #     self.password_hash = @password
  #   end

  #   def authenticate(password)
  #     # NOTE TO SELF: self.password RETURNS "PASSWORD_HASH" FROM THE DATABASE!!!!!" THIS IS PART OF THE MAGIC BUILT IN TO BCRYPT. DON'T EVER CALL "SELF.PASSWORD_HASH." CALL "SELF.PASSWORD" AND THIS WILL LOOK FOR THE PASSWORD HASH IN THE DATABASE!
  #     self.password == password
  #   end
end
