class RandomsController < ApplicationController

    def show
        render({:template => "calc_templates/random_new"})
    end

    def results
        @min = params["user_min"].to_f
        @max = params["user_max"].to_f
        @rando = rand(@min..@max)
        render({:template => "calc_templates/random_results"})
    end

end