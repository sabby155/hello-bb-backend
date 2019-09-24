class Api::V1::BabyMilestonesController < ApplicationController

def index 
    baby_milestones = BabyMilestone.all
    render json: baby_milestones
end     

def update 
        milestone = BabyMilestone.find(params[:id])
        milestone.update(
            caption: params[:caption],
            baby_id: params[:baby_id]
            )
        render json: milestone   

    end 





end
