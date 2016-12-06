Rails.application.routes.draw do
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======


  get 'sessions/new'

  root 'home_page#home'
   get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/signup", to: "users#new" 
  post "/signup", to: "users#create"
  resources :users
  resources :books
  resources :requests

   resources :books, only: [:index, :show] do
    resources :reviews, except: :index
  end
>>>>>>> signup
end
