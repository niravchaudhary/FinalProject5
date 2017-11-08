ActiveAdmin.register Movie do
permit_params :movie_name, :description, :star_cast, :release_date, :order_price, :customer_id, :name

end
