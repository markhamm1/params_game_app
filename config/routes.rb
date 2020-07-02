Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/params_game_app" => "params_game#params_example"
    get "/guess_a_number/:number" => "params_game#number_guessing"
  end
end
