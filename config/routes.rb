Rails.application.routes.draw do
  resources :matches
  namespace :api do
    resources :teams, only: %i[index]
  end
  resources :teams
  resources :leagues
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
