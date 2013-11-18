SorceryPostgresql::Application.routes.draw do
  root to: "users#index"
  resources :users do
    resources :restaurants 
  end

  resources :user_sessions, :only => [:new, :create, :destroy]

  get "login" => "user_sessions#new", :as => :login
  get "logout" => "user_sessions#destroy", :as => :logout
end
