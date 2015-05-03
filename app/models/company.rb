class Company < ActiveRecord::Base
  has_many :admins
  has_many :surveys
  has_many :responses

  def upvote
    self.votes += 1
    self.save
  end

  def downvote
    self.votes -= 1
    self.save
  end

end
