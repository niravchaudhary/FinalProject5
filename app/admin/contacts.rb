ActiveAdmin.register Contact do
  permit_params :name, :phone, :email, :image
end