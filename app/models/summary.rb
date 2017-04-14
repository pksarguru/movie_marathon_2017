class Summary < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  has_many   :votes
end
