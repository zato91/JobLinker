class CompaniesController < ApplicationController
 
    def show 
        @company = find_company
    end 

    private

    def company_params(*args)
        params.require(:company).permit(*args)
    end

    def find_company
        @company = Company.find(params[:id])
    end



end
