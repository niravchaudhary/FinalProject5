class RemoveEmailFromCustomer < ActiveRecord::Migration[5.1]
  def change
    change_table :customers do |t|
      t.remove :email_address
    end
  end
end
