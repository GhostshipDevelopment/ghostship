Rails.application.routes.draw do
  root to: "pages#index"
  resources :nodes
  devise_for :users
end
