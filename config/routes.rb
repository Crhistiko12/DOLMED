Rails.application.routes.draw do
  root 'home#index'
  
  get 'services', to: 'home#services'
  
  resources :products, only: [:index, :show]
  resources :appointments, only: [:new, :create]
  
  # Rutas para Devise
  devise_for :users
end