Rails.application.routes.draw do
  root 'home#top'
  get 'home/about'
  devise_for :users
  
  resources :books do
  resource :favorites, only: [:create, :destroy]
  resources :book_comments, only: [:create, :destroy]
  end
  resources :users,only: [:show,:index,:edit,:update]
  end