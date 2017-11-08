class Movie < ApplicationRecord
  belongs_to :customer
  has_one :trailer
  validates :movie_name, :description, :order_price, :release_date, :star_cast, :name, presence: true
end
