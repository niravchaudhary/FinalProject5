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

  #devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
