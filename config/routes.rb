Rails.application.routes.draw do
<<<<<<< HEAD
  get 'items/index'
  get 'items/show'
  devise_for :users
  root 'items#index'
  resources :users, only: :index
=======

  resources :items, only: %i(index show)
  root 'items#index'
  devise_for :users, :controllers => { :registrations => 'users/registrations' }



>>>>>>> ryo-kamido/master
  resources :profiles, only: :index


  namespace :admin do
    resources :users, only: :index
  end

  resources :registrations,only:[:index,:new]

end
