Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  get 'users/search' => 'users#search'
  get 'comments/index' => 'comments#index'

  resources :users, only: [:show] do
  end
  resources :comments, only: [:create] do
  end
end
