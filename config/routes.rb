Rails.application.routes.draw do
  # Company Routes
  get "/companies" => "companies#index"
  post "/companies" => "companies#create"
  get "/companies/:id" => "companies#show"
  patch "/companies/:id" => "companies#update"
  delete "/companies/:id" => "companies#destroy"

  # Job Routes
  get "/jobs" => "jobs#index"
  post "/jobs" => "jobs#create"
  get "/jobs/:id" => "jobs#show"
  patch "/jobs/:id" => "jobs#update"
  delete "/jobs/:id" => "jobs#destroy"

  # User Routes
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"
  get "/current_user" => "users#show_current_user"

  # Session Routes
  post "/sessions" => "sessions#create"

  # Carted Jobs
  get "/carted_jobs" => "carted_jobs#index"
  post "/carted_jobs" => "carted_jobs#create"
  delete "/carted_jobs/:id" => "carted_jobs#destroy"
end
