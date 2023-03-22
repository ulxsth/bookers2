Rails.application.routes.draw do
  root to: 'homes#top'
  get 'homes/about' => 'homes#about'
  
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  
  resources :books
end
