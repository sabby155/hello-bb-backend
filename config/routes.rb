Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
        # resources :baby_milestones
        # resources :baby_first_faves
        # resources :letters
        # resources :media
        # resources :babies
        get "/babies", to: "babies#index"
        get "/babies/:id", to: "babies#show" 
        post "/babies", to: "babies#create"


        get "/users", to: "users#index"
        get "/users/:id", to: "users#show"
        post "/users", to: "users#create"

        post "/data", to: "babies#data"

        get "/baby-milestones", to: "baby_milestones#index"
        patch "/baby-milestones/:id", to: "baby_milestones#update"

        get "/letters", to: "letters#index"
        post "/letters", to: "letters#create"
        patch "/letters/:id", to: "letters#update"
        delete "/letters/:id", to: "letters#destroy"

        post "/login", to: "auth#login"
        get "/auto_login", to: "auth#auto_login"

        get "/media", to: "media#index"
        post "/media", to: "media#create"
        delete "/media/:id", to: "media#destroy"
        patch "/media/:id", to: "media#update"
    end 
  end   

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
