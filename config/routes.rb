Rails.application.routes.draw do

  root "welcome#index"
  get "/hubs/new" => "hubs#new"

end
