GameSetAndChat::Application.routes.draw do

  devise_for :users
  
  # devise_scope :users do
  #   get '/users/sign_out' => 'devise/sessions#destroy', :as => :destroy_user_session
  #   post '/users/sign_in' => 'devise/sessions#create', :as => :user_session
  # end

  root to: "forums#index"

  resources :forums
  resources :users
  resources :topics
  resources :posts
  resources :about
  resources :house
  resources :recom
end