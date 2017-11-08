class AddCustomerRefToReviews < ActiveRecord::Migration[5.1]
  def change
    add_reference :reviews, :customer, foreign_key: true
  end
end
