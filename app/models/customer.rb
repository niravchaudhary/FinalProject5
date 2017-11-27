class Customer < ApplicationRecord
  has_many :movies
  has_many :reviews
  has_many :orders
  validates :first_name, :last_name, :email_address, :password, :name, presence: true
end
