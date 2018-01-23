Rails.application.routes.draw do
  root 'store#index' , as: 'store_index'

  resources :line_items
  resources :products
  resources :carts
end
