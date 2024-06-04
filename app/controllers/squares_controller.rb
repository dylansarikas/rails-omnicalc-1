class SquaresController < ApplicationController

    def show
        render({:template => "calc_templates/square_new"})
    end

end