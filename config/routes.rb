Trialtask::Application.routes.draw do

  devise_for :users
  resources :users
  
  resources :gadgets do
    resources :images
  end

  get "gadgets/index"
  root to: "gadgets#index"

end
