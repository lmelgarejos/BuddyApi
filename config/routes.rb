Rails.application.routes.draw do
  resources :users
  resources :trips
  resources :groups

  resources :cars do
    resources :trips
  end

  resources :passengers do
    resources :groups
  end

  resources :drivers do
    resources :trips
    resources :cars
  end
  # resources :drivers, only: [:index, :create, :destroy, :show]

  # get "cars", to: "cars#index", as: "cars"
  # get "cars/:id", to: "cars#show", as: "car"
  # post "cars", to: "cars#create"
  #
  # get "drivers", to: "drivers#index", as: "drivers"
  # get "drivers/:id", to: "drivers#show", as: "driver"
  # post "drivers", to: "drivers#create"
  #
  # get "passengers", to: "passengers#index", as: "passengers"
  # get "passengers/:id", to: "passengers#show", as: "passenger"
  # post "passengers", to: "passengers#create"

  # get "trips", to: "trips#index", as: "trips"
  # get "trips/:id", to: "trips#show", as: "trip"
  # post "trips", to: "trips#create"

end
