
Rails.application.routes.draw do
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy]
  devise_for :users

  resources :users, only: :show
end


  
