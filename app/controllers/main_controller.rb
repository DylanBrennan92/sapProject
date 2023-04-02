class MainController < ApplicationController

    def index
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
        end
        @users = User.all
    end

    def show 
        @user = User.find(params[:id])
    end
end
