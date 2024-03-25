
Rails.application.routes.draw do
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
  resources :comments, only: :create end
  
  devise_for :users

  resources :users, only: :show
end


  
