Rails.application.routes.draw do

      root "welcome#index"

      resources :hubs, :only => [:new, :create, :show]
 get "/users" => "users#index"
      get "/signup" => "users#new"
      post "/users" => "users#create"

      get "sessions/login" => "sessions#new"
      post "/login" => "sessions#create"

end
