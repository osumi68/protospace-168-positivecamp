
Rails.application.routes.draw do
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :create, :show, :edit, :update]
  devise_for :users

end


  
