Rails.application.routes.draw do
  #get 'static/about'
  
  #get 'static/services'

  #get 'static/contact'
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :services
  resources :costs
  resources :addresses
  resources :districts
  resources :payment_methods
  resources :profiles
  resources :user_types
  root 'home#index'
  #get 'home/aboutus', controller: :home, action: :aboutus, as: 'aboutus'
  #get 'home/services', controller: :home, action: :services, as: 'ourservices'
  #get 'home/contactus', controller: :home, action: :contactus, as: 'contactus'
  get 'about', controller: :static, action: :about, alias: 'about'
  get 'ourservices', controller: :static, action: :ourservices, alias: 'ourservices'
  get 'contact', controller: :static, action: :contact, alias: 'contact'
  
  resources :vehicle_types do
    resources :vehicles
  end
  
 
  
end
