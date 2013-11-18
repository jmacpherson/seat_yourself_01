SorceryPostgresql::Application.routes.draw do
  # get "reservations_search_results" => ""
  root to: "users#index"
  resources :users do
    resources :reservations, :except => [:new]
  end
  resources :restaurants do
    resources :reservations 
  end

  resources :user_sessions, :only => [:new, :create, :destroy]

  get "login" => "user_sessions#new", :as => :login
  get "logout" => "user_sessions#destroy", :as => :logout
end
