Rails.application.routes.draw do
  root to: 'top#index'
  get 'tweets' => 'tweets#index'
end
