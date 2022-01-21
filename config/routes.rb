Rails.application.routes.draw do
  devise_for :users
  root to: 'matches#index'
  get 'privacy_policy', to: 'home#privacy_policy'
  get 'tos', to: 'home#tos'
  resources :matches, only: %i[index]
  resources :teams, only: %i[index]
  resources :favorites, only: [:index, :create, :destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
