Rails.application.routes.draw do
  resources :books
  get "login", to: 'sessions#new'
  post "login", to: 'sessions#create'
  get "welcome", to: "sessions#welcome"
  post "logout", to: "sessions#destroy"

  get "signup", to: 'users#new'
  post "users", to: "users#create"
  get "authorized", to: "sessions#page_requries_login"


  root "sessions#welcome"
end
