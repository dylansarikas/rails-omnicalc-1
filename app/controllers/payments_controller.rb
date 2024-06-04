class PaymentsController < ApplicationController

    def show
        render({:template => "calc_templates/payment_new"})
    end

    def results
        @apr_form = params["user_apr"].to_f.to_fs(:percentage, {:precision => 4})
        @apr = (((params["user_apr"].to_f) /100) /12)
        @years_form = params["user_years"]
        @years = (params["user_years"].to_i * 12)
        @principal_form = params["user_pv"].to_f.to_fs(:currency, {:precision => 2})
        @principal = params["user_pv"].to_f
        @numerator = @apr * @principal
        @denominator = 1 - ((1 + @apr) ** -@years)
        @payment = (@numerator / @denominator).to_fs(:currency, {:precision => 2})
        render({:template => "calc_templates/payment_results"})
    end

end