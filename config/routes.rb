GameSetAndChat::Application.routes.draw do
  devise_for :users

  root to: "home#index" 
  get '/posts', to: "posts#index"
end