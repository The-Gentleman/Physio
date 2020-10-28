class UsersController < ApplicationController
    skip_before_action :redirect_if_not_logged_in, only: [:new, :create]

    def new 
        @user = User.new
    end 

    def create 
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end 
    end 

    def show 
        find_user
    end 



    private
    def user_params
        params.require(:user).permit(:username, :password)
    end 

    def find_user
        # @user = User.find_by(id: params[:id]) unless current_user.id != params[:id].to_i
        if current_user.id == params[:id].to_i
            @user = User.find_by(id: params[:id])
        else 
            redirect_to user_path(current_user)
        end 
    end 

end
 