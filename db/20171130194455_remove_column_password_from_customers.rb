class RemoveColumnPasswordFromCustomers < ActiveRecord::Migration[5.1]
  def change
    change_table :customers do |t|
      t.remove :password
    end
  end
end
