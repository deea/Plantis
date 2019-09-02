Rails.application.routes.draw do
  get 'user_plants/index'
  get 'user_plants/show'
  get 'users/show'
  devise_for :users
  namespace :user do
    root :to => "user_plants#index"
  end
  root to: 'pages#home'
  resources :plants
  resources :user_plants
  resources :plant_types, only: [ :index, :show ]
  patch "water/:id", to: "user_plants#water_plant", as: :water_plant
  patch "water-anyway/:id", to: "user_plants#water_anyway", as: :water_anyway
  resources :users, only: [ :show ]
end
