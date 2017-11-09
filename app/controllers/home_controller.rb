class HomeController < ApplicationController
  def index
    @trailers = Trailer.all
  end
end
