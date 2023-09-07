# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  # Main Page
  root to: "main#index"

  # GET log form page
  # POST to test table
  get "/log", to: "log#index"
  get "log_run", to: "form#new"
  post "log_run", to: "form#create"

  # Edit log
  get "/edit_update/:id", to: "edit#index", as: "edit_update"
  put "/edit_update/:id", to: "edit#update"
  put "/edit_update/:id", to: "edit#delete"

  # Delete Log
  delete '/display/destroy', to: 'display#destroy', as: 'display_destroy'

  # Display Logs
  get "/display", to: "display#index"

end
