Rails.application.routes.draw do

    get "/" => "squares#show"
    get "/square/new" => "squares#show"
    get "/square/results" => "squares#results"

    get "/square_root/new" => "squareroots#show"
    get "/square_root/results" => "squareroots#results"

    get "/payment/new" => "payments#show"
  
end
