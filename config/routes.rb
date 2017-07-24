Rails.application.routes.draw do

  get '/auth/github', to: 'authentication#github', format: false
  get "/auth/github/callback", to: 'authentication#github', format: false

  resources :users, only: [:index, :create, :destroy, :show, :update]
  # get "user", to: "users#show"

  resources :trips, only: [:index, :create, :destroy, :show, :update]
  resources :groups, only: [:index, :create, :destroy, :show, :update]

  resources :cars, only: [:index, :create, :destroy, :show, :update]

  resources :passengers, only: [:index, :create, :destroy, :show, :update]
  resources :drivers, only: [:index, :create, :destroy, :show, :update]
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
