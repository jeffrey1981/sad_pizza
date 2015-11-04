Rails.application.routes.draw do
  root 'images#index'
  resources :users, only: [:new, :create, :show, :edit, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts
  get '/login', to: 'sessions#new'
end
