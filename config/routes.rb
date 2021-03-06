Rails.application.routes.draw do

  get 'signup' => "users#new"
  get 'login' => "sessions#new"
  post 'login' => "sessions#create"
  delete 'logout' => "sessions#destroy"

  resources :articles
  resources :users

  root 'articles#index'
end
