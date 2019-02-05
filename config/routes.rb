Rails.application.routes.draw do
  resources :streams
  root 'users#index'
  resources :users
end
