Rails.application.routes.draw do
  resources :transactions
  resources :accounts
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
