Rails.application.routes.draw do
  # Company Routes
  get "/companies" => "companies#index"
  post "/companies" => "companies#create"
end
