GameSetAndChat::Application.routes.draw do

  devise_for :users
  
  root to: "forums#index"

  resources :forums
  resources :users
  resources :topics
  resources :posts

end