class CreateTrailers < ActiveRecord::Migration[5.1]
  def change
    create_table :trailers do |t|
      t.string :trailer_name
      t.text :description
      t.date :release_date

      t.timestamps
    end
  end
end
