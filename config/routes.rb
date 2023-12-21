Rails.application.routes.draw do
  # Company Routes
  get "/companies" => "companies#index"
  post "/companies" => "companies#create"
  get "/companies/:id" => "companies#show"
  patch "/companies/:id" => "companies#update"
  delete "/companies/:id" => "companies#destroy"

  # Job Routes
  get "/jobs" => "jobs#index"
end
