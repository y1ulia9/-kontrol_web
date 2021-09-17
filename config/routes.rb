Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :products, :path => '/products', :only => [:index]
  resources :companies, :path => '/companies', :only => [:index, :show]
  resources :orders, :path => '/orders', :only => [:index, :new, :create, :update]

  devise_for :users
  get "home/abc"
  get "home/managers_statistic"
  root to: "products#index"

  # if getting wrong path
    match '*path' => redirect('/'), via: :get
    
end
