class Trailer < ApplicationRecord
  validates :name, :description, :release_date, presence: true
end
