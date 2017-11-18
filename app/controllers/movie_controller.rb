class MovieController < ApplicationController
  def movie
    @movies = Movie.all
  end
end
