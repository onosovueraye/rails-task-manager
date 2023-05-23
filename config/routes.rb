Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "tasks", to: "tasks#list"

  get "tasks/new", to: "tasks#new"

  post "tasks", to: "tasks#create"

  delete "tasks/:id", to: "tasks#destroy"

  patch "tasks/:id", to: "tasks#update"

  get "tasks/:id", to: "tasks#find", as: :task

  get "tasks/:id/edit", to: "tasks#edit"
end
