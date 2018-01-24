Rails.application.routes.draw do
  resources :orders
  root 'store#index', as: 'store_index'
  post 'line_items/:id/decrement' => 'line_items#decrement' , as: "line_item_decrement"

  resources :line_items
  resources :products
  resources :carts
end
