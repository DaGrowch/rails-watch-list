Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "lists", to: "lists#index"
  # get "lists/new", to: "lists#new", as: :new
  # get "lists/:id", to: "lists#show", as: :show
  # post "lists", to: "lists#create"

  # get "lists/:id/bookmarks/new", to: "bookmarks#new"
  # post "lists/:id/bookmarks", to: "bookmarks#create"
  # delete "bookmarks/:id", to: "bookmarks#delete"
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
