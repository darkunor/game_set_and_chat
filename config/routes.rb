GameSetAndChat::Application.routes.draw do
  resources :posts


  resources :topics


  devise_for :users

  resources :home 

end