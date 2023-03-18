Rails.application.routes.draw do
  root to: 'homes#index'
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:index, :show, :edit]
  devise_for :users
end
