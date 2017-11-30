class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :movies
  has_many :reviews
  has_many :orders
  belongs_to :province
  validates :first_name, :last_name, :email_address, :password, :name, :province_id, presence: true
end
