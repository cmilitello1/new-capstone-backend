Rails.application.routes.draw do

  #Twilio
  post "/sendtext" => "twilio#index"

# Sessions
post "/sessions" => "sessions#create"

# Users
get "/users" => "users#index"
get "/users/:id" => "users#show"
post "/users" => "users#create"
patch "/users/:id" => "users#update"
# delete "/users/:id" => "users#destroy"

# Activities
get "/activities" => "activities#index"
get "/activities/:id" => "activities#show"
post "/activities" => "activities#create"
patch "/activities/:id" => "activities#update"
delete "/activities/:id" => "activities#destroy"


# availability
get "/availabilities" => "availabilities#index"
get "/availabilities/:id" => "availabilities#show"
post "/availabilities" => "availabilities#create"
patch "/availabilities/:id" => "availabilities#update"
delete "/availabilities/:id" => "availabilities#destroy"


# seeking
get "/seekings" => "seekings#index"
get "/seekings/:id" => "seekings#show"
post "/seekings" => "seekings#create"
patch "/seekings/:id" => "seekings#update"
delete "/seekings/:id" => "seekings#destroy"


end
