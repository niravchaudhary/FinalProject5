class Trailer < ApplicationRecord
  validates :trailer_name, :description, :release_date, presence: true
end
