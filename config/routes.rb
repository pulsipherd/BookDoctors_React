Rails.application.routes.draw do
  get 'accounts/index'
  get 'accounts/show'
  get 'accounts/new'
  get 'accounts/edit'
  devise_for :users
  root 'books#index'

  get '/about', to: 'static_pages#about'
  resources :books
 end
