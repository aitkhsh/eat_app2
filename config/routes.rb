Rails.application.routes.draw do
  root "foods#index"
  resources :foods do
    collection do
      get "search"
    end
  end
  
  get    "/signup",  to: "users#new"
  get    "/signup",  to: "users#new"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  resources :users
  resources :account_activations, only:[:edit]
end
