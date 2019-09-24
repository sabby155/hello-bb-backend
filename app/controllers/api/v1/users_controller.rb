class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]


    def index
        users = User.all
        render json: users
    end

    def profile 
        render json: {user: UserSerializer.new(current_user)}, status: :accepted
    end     

    def create 

        user = User.create(
            user_params(:username, :password, :first_name, :last_name)
        )

        if user.valid?
            token = encode_token(user_id: user.id)
            render json: {user: UserSerializer.new(user), token: token }, status: :created
        else 
            render json: {error: 'failed to create user'}, status: :not_acceptable    
        end     
    end

    def show 
        # user = User.find(params[:id])
        render json: @user
    end  
    
    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end   
end
