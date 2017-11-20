class MovieController < ApplicationController
  def movie
    @movies = Movie.all
  end
  
  def display
    @category_name = params[:category_name]
    search = "%" + @category_name + "%"
    @category = Movie.where("category LIKE ?", search)
  end
  
  def category_display
    @keywords = params[:category_movie_display]
    cat = "%" + @keywords + "%"
    @movie1 = Movie.where("category LIKE ?", cat)
  end
  
  def own_product
    @movie_name = params[:name]
    ownpro = "%" + @movie_name + "%"
    @movie2 = Movie.where("name LIKE ?", ownpro)
  end
end
