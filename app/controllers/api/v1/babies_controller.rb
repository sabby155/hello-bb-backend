class Api::V1::BabiesController < ApplicationController

    def index 
        babies = Baby.all
        render json: babies 
    end  
    
    def show
        baby = Baby.find(params[:id])
        render json: baby
    end     
end
