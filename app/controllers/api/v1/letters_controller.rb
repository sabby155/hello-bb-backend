class Api::V1::LettersController < ApplicationController

    def index 
        letters = Letter.all
        render json: letters 
    end    
    
    def show 
        letter = Letter.find(params[:id])
        render json: letter
    end  

    def create 
           note = Letter.create(
            content: params[:content],
            baby_id: params[:baby_id]
        )
        if note.valid?
            render json: note
        else 
            render json: {error: 'failed to create letter'}, status: :not_acceptable    
        end 
    end 

    def update 
        note = Letter.find(params[:id])
        note.update(
            content: params[:content],
            baby_id: params[:baby_id]
            )
        render json: note 
    end   
    
    
    def destroy 
        note = Letter.find(params[:id])
        if note.destroy
            render json: {success: 'successfully deleted note'}
        else     
            render json: {error: 'failed to delete note'}, status: :not_acceptable 
        end

    end  

end
