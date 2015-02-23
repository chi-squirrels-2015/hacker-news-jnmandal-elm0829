class Post < ActiveRecord::Base
  belongs_to :user
  has_many :votes
  has_many :comments

  def vote_count
    self.votes.size
  end

end
