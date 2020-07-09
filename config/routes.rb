Rails.application.routes.draw do

  get "/", to: "sessions#new", as: :session 
  get "/homepage", to: "application#homepage", as: :homepage
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/login", to: "sessions#destroy", as: :destroy
  
  resources :users
  resources :companies, only: [:index, :show]
  resources :job_listings, only: [:index, :show]




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
