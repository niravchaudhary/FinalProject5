class HomeController < ApplicationController
  def index
    @trailer = Trailer.all
  end
end
