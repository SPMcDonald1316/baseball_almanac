Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/players" => "players#index"
    get "/players/:id" => "players#show"

    get "/franchises" => "franchises#index"
    get "/franchises/:id" => "franchises#show"
  end
end
