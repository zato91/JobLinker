class CompaniesController < ApplicationController
 
    def show 
         find_company
    end 

    def index
        @companies = Company.all
    end 
    private

    def company_params(*args)
        params.require(:company).permit(*args)
    end

    def find_company
        @company = Company.find(params[:id])
    end



end
