Rails.application.routes.draw do
  get 'user_plants/index'
  get 'user_plants/show'
  get 'users/show'
  devise_for :users
  root to: 'pages#home'
  resources :plants
  resources :user_plants
  resources :plant_types, only: [ :index, :show ]
  patch "water/:id", to: "user_plants#water_plant", as: :water_plant
  resources :users, only: [ :index, :show ] do
    member do
      post :follow, to: "users#follow"
      post :unfollow, to: "users#unfollow"
    end
  end
  post "like/:id", to: "likes#like", as: 'like'
  post "unlike/:id", to: "likes#unlike", as: 'unlike'
  patch "water-anyway/:id", to: "user_plants#water_anyway", as: :water_anyway
end
