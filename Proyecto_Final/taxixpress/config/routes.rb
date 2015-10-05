Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :services
  resources :costs
  resources :addresses
  resources :costs
  resources :districts
  resources :vehicles
  resources :payment_methods
  resources :profiles
  resources :user_types
  resources :vehicle_types
  root 'home#index'
  get 'home/aboutus', controller: :home, action: :aboutus, as: 'aboutus'

end
