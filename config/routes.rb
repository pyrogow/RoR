# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Posts
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  resources :posts

  # Sing Up
  # get '/home', to: 'posts#index'
  # get 'posts#home', as: 'sing_up_home'
  get '/signup', to: 'users#new'
  resources :users

  # Session
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
end
