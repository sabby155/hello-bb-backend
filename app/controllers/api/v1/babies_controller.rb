class Api::V1::BabiesController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index 
        babies = Baby.all
        render json: babies 
    end  

    def create 
        # @user = User.find(params[:user_id])
        # byebug
        baby = Baby.create(
            relationship: params[:relationship],
            first_name: params[:first_name],
            last_name: params[:last_name],
            birth_date: params[:birth_date],
            delivered_in: params[:delivered_in],
            delivered_by: params[:delivered_by],
            weight: params[:weight],
            weight: params[:weight],
            horoscope_sign: params[:horoscope_sign],
            first_address: params[:first_address],
            user_id: current_user.id,
        )

        if baby.valid?
            render json: {baby: BabySerializer.new(baby)}, status: :created
        else 
            render json: {error: 'failed to create user'}, status: :not_acceptable    
        end     
    end

    def data
        bundle = {}

        birthdate = params[:birthday].split("-").join("+")

        url1 = "http://api.wolframalpha.com/v1/result?input=#{birthdate}+president&appid=25JKWE-2LJKEA5HHR"
        response1 = RestClient.get(url1)
        bundle['president'] = response1.body
        
        url2 = "http://api.wolframalpha.com/v1/result?input=#{birthdate}+moon+phase&appid=25JKWE-2LJKEA5HHR"
        response2 = RestClient.get(url2)
        bundle['moon'] = response2.body

        url3 = "http://api.wolframalpha.com/v1/result?input=#{birthdate}+gas+price&appid=25JKWE-2LJKEA5HHR"
        response3 = RestClient.get(url3)
        bundle['gas'] = response3.body

        url4 = "http://api.wolframalpha.com/v1/result?input=#{birthdate}+house+cost&appid=25JKWE-2LJKEA5HHR"
        response4 = RestClient.get(url4)
        bundle['house'] = response4.body

        url5 = "http://api.wolframalpha.com/v1/result?input=#{birthdate}+world+population&appid=25JKWE-2LJKEA5HHR"
        response5 = RestClient.get(url5)
        bundle['population'] = response5.body

        url6 = "http://api.wolframalpha.com/v1/result?input=#{birthdate}+minimum+wage&appid=25JKWE-2LJKEA5HHR"
        response6 = RestClient.get(url6)
        bundle['wage'] = response6.body
        render json: bundle 
    end     

    
    def show    
        baby = Baby.find(params[:id])
        render json: baby
    end     
end
