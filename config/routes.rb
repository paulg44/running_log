# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  # Main Page
  root to: "main#index"

  # GET enter details and table page (run log)
  get "run_log", to: "log#index"

end
