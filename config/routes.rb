Rails.application.routes.draw do
  resources :carritos
  resources :productos
  resources :users

  root 'productos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
