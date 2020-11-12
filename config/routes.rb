Rails.application.routes.draw do
  devise_for :users
  root to: 'folders#index'
  resources :folders, only: [:new, :create, :destroy] do
    resources :memos, only: [:new, :create]
  end
  resources :memos, only: [:show, :destroy]
end
