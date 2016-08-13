class HeatsController < ApplicationController
    before_action :set_heat, only: [:index, :update]
        
    def index 
        render json: @heat
    end 

    def update 
        if @heat.update(heat_params) 
            render json: @heat 
        else 
            render json: @heat.errors 
        end 
    end

   private 

  def set_heat 
     @heat = Heat.last 
  end 

  def heat_params 
      params.permit(:on) 
  end 

end
