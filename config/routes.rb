Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # # Je peux voir toutes les taches READ
  get "tasks", to: "tasks#index"

  # # J'affiche le formulaire de création d'un task
  get "tasks/new", to: "tasks#new"

  # # Je crée une nouvelle instance de tache CREATE
  post "tasks", to: "tasks#create"

  # # J'affiche le formulaire de modification d'une tache
  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  # # Je modifie 1 task UPDATE
  patch "tasks/:id", to: "tasks#update"

  # # Je supprime un task DELETE
  delete "tasks/:id", to: "tasks#destroy"

  # # J'accède au détail d'1 task
  get "tasks/:id", to: "tasks#show", as: "task"
end

