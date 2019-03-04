Rails.application.routes.draw do
  get 'items/index'
  get 'items/show'
  devise_for :users
  root 'items#index'
  resources :users, only: :index
  resources :profiles, only: :index

end
