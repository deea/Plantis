Rails.application.routes.draw do
  get 'user_plants/index'
  get 'user_plants/show'
  get 'users/show'
  devise_for :users
  root to: 'pages#home'
  resources :plants
  resources :user_plants
  resources :plant_types, only: [ :index, :show ]
  resources :users, only: [ :show ]

end
