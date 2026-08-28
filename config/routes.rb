Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "/topics" => "topics#index" 
  get "/topics/:id" => "topics#show"
  post "/topics" => "topics#create"
  patch "topics/:id" => "topics#update"
  delete "topics/:id" => "topics#destroy"
  
end
