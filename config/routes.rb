Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  resources :archives
  resources :notes
  get 'site/home', to: 'site#home'

  root to: 'site#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
