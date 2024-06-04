class SquarerootsController < ApplicationController

    def show
        render({:template => "calc_templates/squareroot_new"})
    end

    def results
        @num = params["user_number"]
        @root = Math.sqrt(params["user_number"].to_f)

        render({:template => "calc_templates/squareroot_results"})
    end

end