Rails.application.routes.draw do
  devise_for :restaurants
  devise_for :users
  resources :pick_ups
  resources :discounts
  resources :menu_items
  resources :favorite_restaurants
  resources :restaurants
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
