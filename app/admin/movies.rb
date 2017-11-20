ActiveAdmin.register Movie do
  permit_params :movie_name, :description, :order_price, :release_date, :star_cast, :name, :customer_id, :image, :category
end
