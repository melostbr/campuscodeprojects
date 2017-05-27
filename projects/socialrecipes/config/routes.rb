Rails.application.routes.draw do
  root 'recipes#index'
  resources :recipes, only: [:new, :create, :show, :index]
  resources :world_cuisines, only: [:new, :create, :show]
  resources :food_types, only: [:new, :create, :show]
  resources :food_preferences, only: [:new, :create, :show]
end
