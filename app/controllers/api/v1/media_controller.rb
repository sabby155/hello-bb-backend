class Api::V1::MediaController < ApplicationController
    
    def index 
        posts = Medium.all
        render json: posts 

        # {user: UserSerializer.new(user), token: token }, status: :created
    end    


    def show 
        post = Medium.find(params[:id])
        render json: post
    end   
    
    def create 
           medium = Medium.create(
            caption: params[:caption],
            link: params[:link],
            date: params[:date],
            baby_id: params[:baby_id],
        )

        if medium.valid?
            render json: medium
        else 
            render json: {error: 'failed to create media'}, status: :not_acceptable    
        end 
    end   

    def update 
        post = Medium.find(params[:id])
        post.update(
            caption: params[:caption],
            link: params[:link],
            date: params[:date],
            baby_id: params[:baby_id]
            )
        render json: post    


    end     

    def destroy 
        medium = Medium.find(params[:id])
        if medium.destroy
            render json: {success: 'successfully deleted post'}
        else     
            render json: {error: 'failed to delete post'}, status: :not_acceptable 
        end

    end     
    

end
