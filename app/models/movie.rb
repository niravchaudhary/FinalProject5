class Movie < ApplicationRecord
  belongs_to :customer
  has_one :trailer
  mount_uploader :image, ImageUploader
  validates :movie_name, :description, :order_price, :release_date, :star_cast, :name, presence: true
end
