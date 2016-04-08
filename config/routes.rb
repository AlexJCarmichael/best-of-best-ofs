Rails.application.routes.draw do
  root 'welcome#index'
  namespace :api do
    root 'lists#index'
    resources :lists
    resources :users
    resources :votes
    match '*not_found_route', to: 'application#not_found', via: [:get, :post, :put, :delete]
  end
end
