Rails.application.routes.draw do
  root to: "pages#index"
  resources :nodes
  
  namespace :core do
    get 'reachable', to: "health#reachable"
  end
  devise_for :users
end
