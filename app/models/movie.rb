class Movie < ApplicationRecord
  validates :movie_name, :description, :order_price, :release_date, :star_cast, presence: true
end
