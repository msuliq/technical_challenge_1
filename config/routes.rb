Rails.application.routes.draw do
  get 'homepage/index'

  resources :tenants
  resources :flats
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'homepage#index', as: 'homepage'
end
