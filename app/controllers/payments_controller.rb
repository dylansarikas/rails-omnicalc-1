class PaymentsController < ApplicationController

    def show
        render({tempate: => "calc_templates/payment_new"})
    end

end