Rails.application.routes.draw do
  get 'user_plants/index'
  get 'user_plants/show'
  devise_for :users
  root to: 'pages#home'
  resources :plants
  resources :user_plants
  resources :plant_types, only: [ :index, :show ]
  patch "water/:id", to: "user_plants#water_plant", as: :water_plant
end
