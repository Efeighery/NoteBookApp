Rails.application.routes.draw do

  resources :archives
  resources :notes
  get 'website/home', to: 'website#home'

  root to: 'website#home'

  resources :users, only: [:create]
  resources :notes, only: [:create, :index, :update, :destroy]
  resources :archives, only: [:create, :index, :update, :destroy]

  get '/signup', to: 'users#new'
  delete '/logout', to: 'sessions#destroy'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'

end
