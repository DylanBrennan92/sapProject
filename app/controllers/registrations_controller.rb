class RegistrationsController < ApplicationController

    def new
        @user = User.new
    end

    
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Account created Successfully"
        else
            render :new
        end
    end

    #params passed in an insecure manner - not a private method
    # OWASP A04:2021 – Insecure Design
    def user_params
        params.require(:user).permit!
    end

end