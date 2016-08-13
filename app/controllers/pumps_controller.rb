class PumpsController < ApplicationController
  before_action :set_pump, only: [:index, :update]

  def index
    render json: @pump
  end

  def update
    if @pump.update(pump_params)
      render json: @pump
    else
      render json: @pump.errors
    end
  end

  private

  def set_pump
    @pump = Pump.last
  end

  def pump_params
    params.permit(:on)
  end
end
