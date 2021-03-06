# frozen_string_literal: true

Rails.application.routes.draw do
  get 'homepage/index'
  root to: 'homepage#index', as: 'homepage'

  resources :flats
  resources :users
  resources :tenants, only: %i[create destroy]
  resources :neighborhoods


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
