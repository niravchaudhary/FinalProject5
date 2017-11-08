class AddMovieRefToTrailers < ActiveRecord::Migration[5.1]
  def change
    add_reference :trailers, :movie, foreign_key: true
  end
end
