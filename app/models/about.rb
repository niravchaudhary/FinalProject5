class About < ApplicationRecord
  validates :info, :image, presence: true
end
