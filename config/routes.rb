GameSetAndChat::Application.routes.draw do
  
  root to: "home#index"
  
  resources :topics
  resources :posts

  devise_for :users

end