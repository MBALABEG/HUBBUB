Rails.application.routes.draw do

      root "welcome#index"

      resources :hubs, :only => [:new, :create]

      get "/signup" => "users#new"
      post "/users" => "users#create"

end
