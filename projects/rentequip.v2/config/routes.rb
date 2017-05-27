Rails.application.routes.draw do
  root 'home#index'
  resources :budgets, only: [:new, :create, :show, :index]
  resources :equipment, only: [:new, :create, :show, :index]
end
