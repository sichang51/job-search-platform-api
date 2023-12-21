Rails.application.routes.draw do
  # Company Routes
  get "/companies" => "companies#index"
  post "/companies" => "companies#create"
  get "/companies/:id" => "companies#show"
  patch "/companies/:id" => "companies#update"
end
