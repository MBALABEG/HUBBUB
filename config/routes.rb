Rails.application.routes.draw do

  root "welcome#index"
  get "/hubs/new" => "hubs#new"
  get "/signup" => "users#new"
  post "/users" => "users#create"

end
