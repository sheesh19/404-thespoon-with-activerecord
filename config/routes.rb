Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # # See all restaurants
  # get "restaurants", to: "restaurants#index"

  # # Create a new restaurant
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create"

  # # See one restaurant
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant


  # # Update a restaurant
  # get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch "restaurants/:id", to: "restaurants#update"

  # # Destroy a restaurant
  # delete "restaurants/:id", to: "restaurants#destroy"

  # Creates ALL CRUD ROUTES
  resources :restaurants

  # resources :restaurants, only: [ :show, :index, :new, :create ]
end
