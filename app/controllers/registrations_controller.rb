class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create 
        # render plain: "Thanks" # Rendering a text and sanding backs
        # render plain: params[:user] # This print out tha params hash, but just the portion corresponding to users
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id # "session" is Rails encrypted hash cookies
            redirect_to root_path, notice: "Successfuly created account"
        else
            render :new # :new will render views/registrations/new.html.erb
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end 