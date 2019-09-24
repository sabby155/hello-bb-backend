class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:login]
 
    def login
        user = User.find_by(username: params[:username])
        
        #User#authenticate comes from BCrypt
        if user && user.authenticate(params[:password])
            # byebug
            # encode token comes from ApplicationController
            token = encode_token({user_id: user.id})
            render json: { user: UserSerializer.new(user), token: token }, status: :accepted
        else
            render json: { errors: 'Invalid username or password' }, status: :unauthorized
        end
    end
    

    def auto_login
        user = current_user
        if user 
            render json: user 
        else 
            render json: {errors: "Please try again."}
        end     

    end   
    
    
    # private
    
    # def user_login_params
    #     # params { user: {username: 'Chandler Bing', password: 'hi' } }
    #     params.require(:user).permit(:username, :password)
    # end
end






