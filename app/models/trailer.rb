class Trailer < ApplicationRecord
  belongs_to :movie
  validates :trailer_name, :description, :release_date, presence: true
end
