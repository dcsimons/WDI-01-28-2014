Store::Application.routes.draw do

  root "categories#index"

  get "/categories", to: "categories#index", as: "categories"
  get "/categories/:id", to: "categories#show", as: "category"


end
