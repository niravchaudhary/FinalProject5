class AddNamesToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :name, :string
  end
end
