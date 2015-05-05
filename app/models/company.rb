class Company < ActiveRecord::Base
  has_many :admins
  has_many :surveys
  has_many :responses

  before_save :default_values

  def default_values
    self.votes ||= 0
  end

  def upvote
    self.votes += 1
    self.save
  end

  def downvote
    self.votes -= 1
    self.save
  end

end
