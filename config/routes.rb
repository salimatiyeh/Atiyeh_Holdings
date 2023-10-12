Rails.application.routes.draw do
  devise_for :users
  resources :houses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  get "houses/new", to: "houses#new"
  post "houses", to: "houses#create"
end
