Rails.application.routes.draw do
  devise_for :users
  root to: 'folders#index'
  resources :folders, only: [:new, :create]
end
