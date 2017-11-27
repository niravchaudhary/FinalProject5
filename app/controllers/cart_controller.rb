class CartController < ApplicationController
  
  before_action :initialize_session
  def cart
    @id = params[:id]
    @movie =  Movie.where('id = ?', @id)
  end
  def Add_to_cart
    @id = params[:id]
    session[:movies_to_call] << @id unless session[:movies_to_call].include?(@id)
    #@movie =  Movie.find(session[:movies_to_call])
    redirect_to :action => :show
  end
  
  def show
    @session = session[:movies_to_call]
    @movie =  Movie.find(session[:movies_to_call])
  end
  
  private 
  def initialize_session
    session[:movies_to_call] ||= []
  end
  

end
