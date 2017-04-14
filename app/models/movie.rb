class Movie < ApplicationRecord
  has_many :summaries
  has_many :votes, through: :summaries
  has_one  :winner, class_name: "Summary"

  def author_ids
    author_ids = []

    self.summaries.each do |summary|
      author_ids.push(summary.user.id)
    end

    return author_ids
  end
end
