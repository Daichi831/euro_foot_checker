Rails.application.routes.draw do
  root to: 'matches#index'
  devise_for :users
  get 'privacy_policy', to: 'home#privacy_policy'
  get 'tos', to: 'home#tos'
  resources :matches, only: %i[index]
  resources :teams, only: %i[index]
  resources :favorites, only: [:index, :create, :destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
