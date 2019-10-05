Rails.application.routes.draw do
  root to: "top#index"
  # get : "top#index"

  devise_for :users
  # root  'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
