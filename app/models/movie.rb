class Movie < ApplicationRecord
  validates :movie_name, :description, :order_price, :release_date, :starcast, presence: true
end
