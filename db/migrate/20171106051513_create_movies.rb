class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :movie_name
      t.text :description
      t.text :star_cast
      t.date :release_date
      t.decimal :order_price

      t.timestamps
    end
  end
end
