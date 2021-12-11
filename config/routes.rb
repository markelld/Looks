Rails.application.routes.draw do
  get 'conversations/index'
  resources :orders
  # get 'home/index' 
  root "home#index"
  resources :stylists
  devise_for :users 

  resources :conversations,only: [:index, :create] do 
    resources :messages, only: [:index, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Almost every application defines a route for the root path ("/") at the top of this file.
  # root "articles#index"
end
