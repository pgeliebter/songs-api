Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/songs" => "songs#index"
  get "/songs/:id" => "songs#show"
  post "/songs" => "songs#create"
end
