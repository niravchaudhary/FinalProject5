class AddTrailerNameToTrailers < ActiveRecord::Migration[5.1]
  def change
    add_column :trailers, :trailer, :string
  end
end
