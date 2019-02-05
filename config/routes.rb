Rails.application.routes.draw do
  resources :streams
  root 'streams#index'
  resources :users
end
