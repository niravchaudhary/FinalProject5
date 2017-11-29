class CartController < ApplicationController
  
  before_action :initialize_session
  def cart
    @id = params[:id].to_i
    @movie =  Movie.where('id = ?', @id)
  end
  def Add_to_cart
    id = params[:id].to_i
    session[:movies_to_call] << id unless session[:movies_to_call].include?(id)
    redirect_to :action => :show
  end
  
  def show
    @session = session[:movies_to_call]
    @movie =  Movie.find(session[:movies_to_call])
  end
  
   def remove_item
    @id1 = params[:id].to_i
    @session = session[:movies_to_call]
    @session.each do |cart|
      if cart == @id1
       @session.delete(cart)
     end
    end
    redirect_to :action => :show
   end
    
  private 
  def initialize_session
    session[:movies_to_call] ||= []
  end
  
 

end
