Rails.application.routes.draw do

  get "/", to: "application#homepage", as: :homepage
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/login", to: "sessions#destroy", as: :destroy
 
  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
