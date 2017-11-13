Rails.application.routes.draw do

  resources :items
  devise_for :restaurants, controllers: { sessions: 'restaurants/sessions', registrations: "restaurants/registrations" }
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: "users/registrations" }
    
  get 'restaurants/all' => 'restaurants#live_restaurants'
  get 'restaurants/option' => 'restaurants#choosing_option'
  get 'all/restaurants' => 'restaurants#all_restaurants'
  
  resources :pick_ups
  resources :discounts
  resources :menu_items
  resources :favorite_restaurants
  resources :restaurants do
    member do
      put "like" => "restaurants#vote"
    end
  end
  resources :users

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end