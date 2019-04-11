Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  get 'users/search' => 'users#search'
end
