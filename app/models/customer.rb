class Customer < ApplicationRecord
  has_many :movies
  has_many :reviews
  has_many :orders
  belongs_to :province
  validates :first_name, :last_name, :email_address, :password, :name, :province_id, presence: true
end
