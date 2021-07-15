Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  get "home/index"
  root to: "home#index"

  # if getting wrong path
    match '*path' => redirect('/'), via: :get
end
