Rails.application.routes.draw do

# activities
get "/activities" => "activities#index"
get "/activities/:id" => "activities#show"
post "/activities" => "activities#create"
patch "/activities/:id" => "activities#update"
delete "/activities/:id" => "activities#destroy"

# users

# availability

#seeking


end
