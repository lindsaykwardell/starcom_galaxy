Rails.application.routes.draw do
  root "application#index"

  resources :users
  get "/users/:id", to: 'users#show'
  get "/profile", to: "users#edit"
  get "/register", to: "users#new"
  post "/register", to: "users#create"
  resources :empires
  resources :systems
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
