Rails.application.routes.draw do
  # root route
  # another way would be: get "/", to: "main#index", as: :root
  root to: "main#index"

  # Get /about
  get "/about", to: "about#index", as: :about

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  # Get /sign_up
  get "sign_up", to: "registrations#new", as: :sign_up
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"
end
