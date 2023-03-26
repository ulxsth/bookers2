Rails.application.routes.draw do
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
end
