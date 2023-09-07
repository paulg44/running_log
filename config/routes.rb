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
  get "/edit_log", to: "edit#index"
  put "/edit_log", to: "edit#update", as: "update_test"

  # Delete Log
  delete '/display/destroy', to: 'display#destroy', as: 'display_destroy'

  # Display Logs
  get "/display", to: "display#index"

end
