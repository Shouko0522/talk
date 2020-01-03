Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "talks", to: "talks#list"

  get "talks/:id", to: "talks#chatroom", as: "my_helper"

  # get "tasks/:id", to: "tasks#show", as: :task

  # get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  # post "tasks", to: "tasks#edit"

  # patch "tasks/:id", to: "tasks#update"
end
