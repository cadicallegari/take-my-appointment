Rails.application.routes.draw do
  resources :payments
  resources :clients
  resources :addresses
  resources :phones
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
