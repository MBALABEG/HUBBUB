Rails.application.routes.draw do

      root "welcome#index"

      get "/signup" => "users#new"
      post "/users" => "users#create"

      get "sessions/login" => "sessions#new"
      get "/logout" => "sessions#destroy"
      post "/login" => "sessions#create"

    resources :hubs, :only => [:new, :create, :show]

      namespace :api, :only => [:show], defaults: { format: :json } do
        namespace :v1 do
            resources :hubs, :only => [:new, :create, :show]
        end
      end


end
