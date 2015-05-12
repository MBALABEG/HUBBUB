Rails.application.routes.draw do

  root "welcome#index"
  get "/hubs/new" => "hubs#new"
  get "/hubs/:id" => "hubs#show" as: :hub
  post "/hubs" => "hubs#create"

end
