Rails.application.routes.draw do
  devise_for :users
  root 'joints#index'
  resources :joints
  resources :parts
end
