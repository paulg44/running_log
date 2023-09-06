# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  # Main Page
  root to: "main#index"

  # GET log form page
  # POST to test table
  get "/log", to: "log#index"
  get "log_run", to: "form#new"
  post "log_run", to: "form#create"

  # Display Logs
  get "/display", to: "display#index"

end
