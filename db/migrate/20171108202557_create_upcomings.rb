class CreateUpcomings < ActiveRecord::Migration[5.1]
  def change
    create_table :upcomings do |t|
      t.string :name
      t.string :image
      t.text :description
      t.string :star_cast

      t.timestamps
    end
  end
end
