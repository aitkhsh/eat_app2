Rails.application.routes.draw do
  root "application#hello"
  resources :foods do
    collection do
      get "search"
    end
  end
end
