class FansController < ApplicationController 
    before_action :set_fan, only: [:index, :update] 

    def index  
      render json: @fan    
    end 

    def update 
        if @fan.update(fan_params) 
            render json: @fan 
        else 
            render json: @fan.errors
        end 
    end 

    private 

    def set_fan
        @fan = Fan.last  
    end 

    def fan_params 
        params.permit(:on) 
    end 
end 
