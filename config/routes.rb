Rails.application.routes.draw do
  root to: "top#index"

  devise_for :users
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
