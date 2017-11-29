class RemoveProvinceRefToCustomers < ActiveRecord::Migration[5.1]
  def change
    remove_reference :customers, :name, foreign_key: true
  end
end
