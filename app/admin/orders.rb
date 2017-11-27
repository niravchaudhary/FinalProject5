ActiveAdmin.register Order do
  belongs_to :customer
  permit_params :status, :pst_rate, :gst_rate
end
