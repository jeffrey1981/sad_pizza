Rails.application.routes.draw do
  root 'images#index'
  resources :users, only: [:new, :create, :show, :edit, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts, only: [:index, :new, :show, :create, :edit, :destroy]
  get '/login', to: 'sessions#new'
end
