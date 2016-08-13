class LightsController < ApplicationController
  before_action :set_light, only: [:index, :update]

  def index
    render json: @light
  end

  def update
    if @light.update(light_params)
      render json: @light
    else
      render json: @light.errors, status: :unprocessable_entity
    end
  end

  private

  def set_light
    @light = Light.last
  end

  def light_params
    params.permit(:reading)
  end
end
