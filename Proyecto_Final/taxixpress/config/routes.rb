Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :services
  resources :costs
  resources :addresses
  resources :districts
  resources :vehicles
  resources :payment_methods
  resources :profiles
  resources :user_types
  resources :vehicle_types
  root 'home#index'
  get 'home/aboutus', controller: :home, action: :aboutus, as: 'aboutus'
  get 'home/services', controller: :home, action: :services, as: 'ourservices'
  get 'home/contactus', controller: :home, action: :contactus, as: 'contactus'
end
