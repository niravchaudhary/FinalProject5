class Province < ApplicationRecord
  has_many :customers
  validates :name, :pst_rate, :gst_rate, presence: true
end
