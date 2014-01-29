Store::Application.routes.draw do

  root "categories#home"

  get "/categories", to: "categories#index", as: "categories"
  get "/categories/:id", to: "categories#show", as: "category"

  get "/products", to: "products#index", as: "products"
  get "/products/:id", to: "products#show", as: "product"

end
