Rails.application.routes.draw do
  # Get /about
  get "/about", to: "about#index", as: :about

  # root route
  get "/", to: "main#index", as: :root # another way would be: root to: "main#index"
end
