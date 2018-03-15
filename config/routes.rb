Rails.application.routes.draw do
  ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations: "devise/registrations", sessions: "devise/sessions" }
  resources :carritos
  resources :productos
  resources :users

  root 'productos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
