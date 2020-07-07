class SessionsController < ActionController::Base

    def new 
       session[:name]
    end 

    def create
        user = User.find_by_email(params[:email])
        byebug
        if user && user.authenticate!(params[:password_digest])
            session[:user_id] = user.id 
            redirect_to homepage_path, notice: "You are logged in!"
        else   
            flash.now[:alert] = "Email and/or password is incorrect"
            render "new"
        end 
    end 
            
        
    def destroy 
        session[:user_id].clear 
        redirect_to homepage_path, notice: "You have logged out!"
    end 
 

end 
