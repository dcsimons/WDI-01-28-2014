Store::Application.routes.draw do

  root "categories#home"

  get "/categories", to: "categories#index", as: "categories"
  get "/categories/:id/edit", to: "categories#edit", as: "edit_categories"
  get "/categories/new", to: "categories#new", as: "new_categories"
  get "/categories/:id", to: "categories#show", as: "category"
  patch "/categories/:id", to: "categories#update"
  delete "/categories/:id", to: "categories#destroy"
  post "/categories", to: "categories#create"

  get "/products", to: "products#index", as: "products"
  get "/products/:id/edit", to: "products#edit", as: "edit_product"
  get "/products/new", to: "products#new", as: "new_products"
  get "/products/:id", to: "products#show", as: "product"
  patch "/products/:id", to: "products#update"
  delete "/products/:id", to: "products#destroy"
  post "/products", to: "products#create"

end
