class AboutPageController < ApplicationController
  def about
    @abouts = About.all
  end
end
