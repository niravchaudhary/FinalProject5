ActiveAdmin.register Review do
  permit_params :title, :content, :cust_id
end
