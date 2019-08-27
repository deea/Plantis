Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :plants
  resources :plant_types, only: [ :index, :show ]
  get "my_jungle", to: 'plants#my_jungle'
end
