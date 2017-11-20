class AddFilterToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :filter, :string
  end
end
