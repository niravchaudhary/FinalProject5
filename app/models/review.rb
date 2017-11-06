class Review < ApplicationRecord
  validates :tile, :content, presence: true
end
