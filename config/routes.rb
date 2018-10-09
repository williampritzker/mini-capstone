Rails.application.routes.draw do
    
 namespace :api do
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    post "/orders" => "orders#create"
    post "/cartedproducts" => "carted_products#create"
  end


get "/products" => "products#index"
get "/products/new" => "products#new"
post "/products" => "products#create"
get "/products/:id" => "products#show"
get "/products/:id/edit" => "products#edit"
patch "/products/:id" => "products#update"
delete "/products/:id" => "products#destroy"


  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
end
