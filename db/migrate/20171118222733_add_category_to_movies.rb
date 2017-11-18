class AddCategoryToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :category, :string
  end
end
