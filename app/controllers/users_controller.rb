class UsersController < ApplicationController
    def create 
        user = User.new(user_params)
        if user.save #if the new user meets the parameters, an account can be created otherwise it will return an error
            render json: user, status: :created
        else  
            render json: user.errors, status: :unprocessable_entity
        end 
    end 

    private

    def user_params
        #in order to create an account, the user must provide 4 parameters
        params.require(:user).permit(:username, :email, :first_name, :last_name)
    end 
     
end
