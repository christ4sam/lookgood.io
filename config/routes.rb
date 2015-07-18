Rails.application.routes.draw do
  root 'home#index'
  resources :products
  resources :brands
  resources :products do 
  resources :reviews
  end
  resources :locations
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users, only: [:index, :show]

  resources :ratings, only: :update


end