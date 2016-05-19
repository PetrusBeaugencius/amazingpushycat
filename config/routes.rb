Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :transactions
  resources :accounts

  devise_scope :user do
    authenticated :user do
      root :to => 'accounts#index'
    end
    unauthenticated :user do
      root :to => 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
