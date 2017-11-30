ActiveAdmin.register Customer do
  permit_params :first_name, :last_name, :email, :password, :name, :province_id
end
