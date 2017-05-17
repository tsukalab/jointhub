Rails.application.routes.draw do
  root 'joints#index'
  resources :joints
  resources :parts
  resources :tags
  resources :joint_parts
  resources :joint_tags
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  direct :github do
    'https://github.com/tsukalab/jointhub'
  end
end
