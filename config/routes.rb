Trialtask::Application.routes.draw do

  get "home/index"
  get "users/index"
  get "gadgets/index"
  
  devise_for :users
  devise_scope :user do
    get "/users",  :to => "users#index"
    get "/users/:id",  :to => "users#show", as: :user
    authenticated :user do
      root to: "users#profile", as: :authenticated_root
    end
  end
  
  resources :gadgets do
    resources :images
  end
  
  unauthenticated do
    root to: "home#index"
  end


end
