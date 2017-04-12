class Movie < ApplicationRecord
  has_many :summaries
  has_many :votes, through: :summaries
  has_one  :winner, class_name: "Summary"
end
