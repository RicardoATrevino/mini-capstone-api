Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/products", controller: "products", action: "display_products_method"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  get "/products", controller: "products", action: "display_products_method"

  get "/single_product/:id", controller: "products", action: "single_product"

  get "/espresso", controller: "products", action: "espresso_method"

  get "/croissant", controller: "products", action: "criossant_method"

  get "/coffee", controller: "products", action: "coffee_method"

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
