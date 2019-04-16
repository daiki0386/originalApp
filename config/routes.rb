Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  get 'users/search' => 'users#search'
  resources :users, only: [:show] do
    resources :comments, only: [:create]
  end
end
