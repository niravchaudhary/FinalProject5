Rails.application.routes.draw do
  get 'movie/movie'

  get 'about_page/about'
  #get 'aboutpage', to: 'aboutpage#about', as: 'aboutpage'

  devise_for :admin_users, ActiveAdmin::Devise.config
  #ActiveAdmin.routes(self)
  #devise_for :admin_users, ActiveAdmin::Devise.config
  #ActiveAdmin.routes(self)
  root to: 'home#index'
  
  get '/search', to: "home#search", as: 'search'
  get '/display', to: "movie#display", as: 'display'
  get '/own_product', to: "movie#own_product", as: 'own_product'
  get '/filter', to: "movie#filter", as: 'filter'
  get '/cat_search', to:"movie#cat_search", as: 'cat_search'
  #get '/category_show', to: "movie#category_show", as: 'category_show'

  #devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
