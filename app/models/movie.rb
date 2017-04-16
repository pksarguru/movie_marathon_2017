class Movie < ApplicationRecord
  has_many :summaries
  has_many :votes, through: :summaries
  has_one  :winner, class_name: "Summary"

  def has_summary_by_user?(user)
    self.in?(user.summarized_movies)
  end


end
