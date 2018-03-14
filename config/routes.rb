Rails.application.routes.draw do
  resources :carritos
  resources :inventarios
  resources :productos
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
