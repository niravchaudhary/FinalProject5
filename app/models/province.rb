class Province < ApplicationRecord
  validates :status, :pst_rate, :gst_rate, presence: true
end
