Rails.application.routes.draw do
   # root route
   # another way would be: get "/", to: "main#index", as: :root
   root to: "main#index"

  # Get /about
  get "/about", to: "about#index", as: :about

  # Get /sign_up
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
end
