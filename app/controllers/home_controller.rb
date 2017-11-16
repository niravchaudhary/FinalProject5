class HomeController < ApplicationController
  def index
    @trailers = Trailer.order(:trailer_name).page(params[:page]).per(1)
  end
  
  def search
    keywords = "%" + params[:search_keyword] + "%";
    
    @trailers = Trailer.where("trailer_name LIKE ?", keywords)
  end
end
