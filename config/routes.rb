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

        get "/users", to: "users#index"
        get "/users/:id", to: "users#show"

    end 
  end   

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
