  class Summary < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  has_many   :votes

  def summary_number
    movie = self.movie
    summaries = movie.summaries

    summaries.index(self) + 1

  end
end
