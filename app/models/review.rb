class Review < ApplicationRecord
  belongs_to :customer
  validates :title, :content, presence: true
end
