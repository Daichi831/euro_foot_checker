Rails.application.routes.draw do
  devise_for :users
  root to: 'matches#index'
  resources :matches, only: %i[index]
  namespace :api do
    resources :teams, only: %i[index]
  end
  resources :teams, only: %i[index]
  resources :favorites, only: [:index, :create, :destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
