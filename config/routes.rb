Rails.application.routes.draw do
  root 'welcome#index'
  namespace :api do
    root 'lists#index'
    resources :lists
    resources :users
    resources :votes
  end
end
