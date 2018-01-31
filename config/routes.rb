Rails.application.routes.draw do
  resources :orders
  root 'store#index', as: 'store_index'
  post 'line_items/:id/decrement' => 'line_items#decrement', as: 'line_item_decrement'
  # match 'cart/:id/go_back' => 'cart/go_back', :as => 'cancel_cart'

  resources :line_items
  resources :products do
    get :who_bought, on: :member
  end
  resources :carts
end
