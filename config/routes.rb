GameSetAndChat::Application.routes.draw do

  resources :forums


  devise_for :users
  
  root to: "home#index"
  resources :users
  resources :topics
  resources :posts

end