Rails.application.routes.draw do
  devise_for :users
  root to: 'folders#index'
  resources :folders, only: [:new, :create, :destroy] do
    resources :memos, only: [:new, :show, :create, :edit, :update]
  end
  resources :memos, only: :destroy
end
