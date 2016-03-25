Rails.application.routes.draw do

  root to: 'static_pages#home'

  devise_for :users
  authenticated :user do
    root :to => 'static_pages#home', :as => "authenticated_root"
  end

  resources :users, only: [:index, :show, :edit, :update]
  resources :posts

end
