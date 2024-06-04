class SquaresController < ApplicationController

    def show
        render({:template => "calc_templates/square_new"})
    end
    
    def results
        @num = params["number"]
        @square = params["number"].to_f * params["number"].to_f
        render({:template => "calc_templates/square_results"})
    end

end