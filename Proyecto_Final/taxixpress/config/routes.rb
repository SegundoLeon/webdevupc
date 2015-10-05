Rails.application.routes.draw do
  resources :services
  resources :costs
  root 'home#index'
  resources :addresses
  resources :districts
  resources :vehicles
  resources :payment_methods
  resources :profiles
  resources :user_types
  resources :vehicle_types

  #get 'services/customer', controller: :services, action: :customer, as: :customer

end
