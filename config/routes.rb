Rails.application.routes.draw do

  root "welcome#index"
  get "/hubs/new" => "hubs#new"
  get "users/signup" => "users#new"
  post "/users" => "users#create"

end
