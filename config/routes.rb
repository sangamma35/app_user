Rails.application.routes.draw do
  get 'favorites/update'
  resources :posters
  devise_for :users
  root 'home#index'
 get 'login', to: 'user#new'
 post 'login', to: 'user#create'
 delete 'logout', to: 'user#destroy'
 resources :likes, only: [:create, :destroy]
 resources :posts do
  resources :comments, only: [:create, :destroy]
 end
end
