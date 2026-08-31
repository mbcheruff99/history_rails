Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "/topics" => "topics#index" 
  get "/topics/:id" => "topics#show"
  post "/topics" => "topics#create"
  patch "topics/:id" => "topics#update"
  delete "topics/:id" => "topics#destroy"
  
  get "/events" => "events#index"
  get "/events/:id" => "events#show"
  post "events" => "events#create"
  patch "/events/:id" => "events#update"
  delete "events/:id" => "events#destroy"
  
  get "/locations" => "locations#index"
  get "/locations/:id" => "locations#show"
  post "/locations" => "locations#create"
  patch "/locations/:id" => "locations#update"
  delete "locations/:id" => "locations#destroy"

  get "/people" => "people#index"
  get "people/:id" => "people#show"
  post "people" => "people#create"
  patch "people/:id" => "people#update"
  delete "people/:id" => "people#destroy"
  
end
