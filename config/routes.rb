Rails.application.routes.draw do

    get "/" => "squares#show"
    get "/square/new" => "squares#show"
    get "/square/results" => "squares#results"

    get "/square_root/new" => "squareroots#show"
    get "/square_root/results" => "squareroots#results"

    get "/payment/new" => "payments#show"
    get "/payment/results" => "payments#results"

    get "random/new" => "randoms#show"
    get "random/results" => "randoms#results"
  
end
