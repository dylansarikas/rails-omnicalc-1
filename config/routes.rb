Rails.application.routes.draw do

    get "/" => "squares#show"
    get "/square/new" => "squares#show"
    get "/square/results" => "squares#results"
  
end
