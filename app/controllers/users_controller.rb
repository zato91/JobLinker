class UsersController < ApplicationController
    before_action :find_user, only: [:show]

    def show
       
    end 

    def new 
        @user = User.new
    end 

    def create
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end 

    private 
    
    def user_params
        params.require(:user).permit(:name, :email, :password, :image)
    end 

    def find_user
        @user = User.find(params[:id])
    end 

end
