class HomeController < ApplicationController
  def index
    @trailers = Trailer.order(:trailer_name).page(params[:page]).per(1)
  end
end
