class ApplicationController < ActionController::Base
    helper_method :current_user

    def homepage
        @joblistings = JobListing.all
        @search = params["search"]
           
        if @search.present?
          @name = @search["name"]
          @joblistings = Skill.where(name: @name).map { |i| i.job_listings}.flatten      
        end
        current_user
        
    end 

    def current_user
        if session[:user_id] 
            @current_user ||= User.find(session[:user_id])
        else  
            @current_user = nil
        end
    end 


end
