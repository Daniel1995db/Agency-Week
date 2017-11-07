Rails.application.routes.draw do
  devise_for :restaurants, controllers: { sessions: 'restaurants/sessions', registrations: "restaurants/registrations" }
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: "users/registrations" }
  resources :pick_ups
  resources :discounts
  resources :menu_items
  resources :favorite_restaurants
  resources :restaurants
  resources :users

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end