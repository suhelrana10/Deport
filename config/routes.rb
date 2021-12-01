Rails.application.routes.draw do

  resources :orders
  resources :line_items
  resources :carts
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'store#index',  as: 'store_index'
end
