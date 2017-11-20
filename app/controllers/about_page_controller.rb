class AboutPageController < ApplicationController
  def about
      @abouts = About.all
    @contacts = Contact.all
  end
  
  
end
