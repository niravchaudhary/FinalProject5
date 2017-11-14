Rails.application.routes.draw do
  get 'about_page/about'

  devise_for :admin_users, ActiveAdmin::Devise.config
  #ActiveAdmin.routes(self)
  #devise_for :admin_users, ActiveAdmin::Devise.config
  #ActiveAdmin.routes(self)
  root to: 'home#index'

  #devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
