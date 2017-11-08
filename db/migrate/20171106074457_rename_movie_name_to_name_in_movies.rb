class RenameMovieNameToNameInMovies < ActiveRecord::Migration[5.1]
  def up
    rename_column :movies, :movie_name, :name
  end

  def down
    rename_column :movies, :name, :movie_name
  end
end
