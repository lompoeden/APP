Rails.application.routes.draw do
  devise_for :users
  resources :contacts
  get 'sessions/new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
root to: "home#index"
end
