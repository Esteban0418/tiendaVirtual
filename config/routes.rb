Rails.application.routes.draw do
  ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations: "devise/registrations", sessions: "devise/sessions" }
  resources :carritos
  resources :productos
  resources :users

  post "/carritos/:id/comprar", to: "carritos#comprar", as: "comprar"
  post "/carritos/:id/add_product", to: "carritos#add_product", as: "add_product"
  post "/carritos/:id/sumar_cantidad", to: "carritos#sumar_cantidad", as: "sumar_cantidad"
  get "/carritos/:id/buscar", to: "carritos#buscar", as: "buscar"
  post "/carritos/:id/remove_product", to: "carritos#remove_product", as: "remove_product"
  root 'productos#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
