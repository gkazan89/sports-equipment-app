Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/carted_items" => "carted_items#index"
    post "/carted_items" => "carted_items#create"
    delete "/carted_items/:id" => "carted_items#destroy"

    get "/orders" => "orders#index"
    post "/orders" => "orders#create"

    get "/items" => "items#index"
    get "/items/:id" => "items#show"

    post "/items" => "items#create"
    patch "/items/:id" => "items#update"

    delete "/items/:id" => "items#destroy"


  end
end
