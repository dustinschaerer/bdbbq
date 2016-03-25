Rails.application.routes.draw do

  resources :posts
  root to: 'users#index'
  devise_for :users

end
