Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/players/:search" => "players#index"
    get "/player/:id" => "players#show"

    get "/franchises" => "franchises#index"
    get "/franchises/:franch_id" => "franchises#show"
    get "/franchises/:franch_id/:year_id" => "franchises#year_stats"

    get "/games" => "games#index"
    get "/games/:game_id" => "games#show"
  end
end
