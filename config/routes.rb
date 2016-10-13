Rails.application.routes.draw do
  root 'joints#index'
  resources :joints
  resources :parts
end
