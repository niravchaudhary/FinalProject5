class MovieController < ApplicationController
  def movie
    @movies = Movie.all
  end
  
  def display
    @category_name = params[:category_movie_display]
    search = "%" + @category_name + "%"
    @category = Movie.where("category LIKE ?", search)
  
    
  end
    
  def own_product
    @movie_name = params[:name]
    ownpro = "%" + @movie_name + "%"
    @movie2 = Movie.where("name LIKE ?", ownpro)
  end
  
  def filter
    @movie_name1 = params[:filter]
    filter = "%" + @movie_name1 + "%" 
    @movie3 = Movie.where("filter LIKE ?", filter)
  end
  
  def cat_search     
    
    
    my_cat = "%" + params[:cat_name] + "%"
    keyword = "%" + params[:category_search] + "%"
    
    @movie4 = Movie.where("name LIKE ? and category LIKE ?",keyword, my_cat)
    
    
    
  end
end
