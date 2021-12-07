Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessionns do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end



  # get 'sessionns/index'
  # get 'sessionns/create'
  # get 'sessionns/destroy'
  # get 'sessionns/new'

  resources :users
  resources :orders
  resources :line_items
  resources :carts
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'store#index',  as: 'store_index'
end
