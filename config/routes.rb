Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'welcome#index'
  namespace :api do
    root 'lists#index'
    resources :lists
    resources :users
    resources :votes
    resources :items
    match '*not_found_route', to: 'application#not_found', via: [:get, :post, :put, :delete]
  end
end
