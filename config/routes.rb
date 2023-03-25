Rails.application.routes.draw do
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  
  resources :books do
    resources :favorites, only: [:create, :destroy]
  end
end
