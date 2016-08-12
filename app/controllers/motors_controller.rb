class MotorsController < ApplicationController
  before_action :set_motor, only: [:show, :update, :destroy]

  # GET /motors
  def index
    @motors = Motor.all

    render json: @motors
  end

  # GET /motors/1
  def show
    render json: @motor
  end

  # POST /motors
  def create
    @motor = Motor.new(motor_params)

    if @motor.save
      render json: @motor, status: :created, location: @motor
    else
      render json: @motor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /motors/1
  def update
    if @motor.update(motor_params)
      render json: @motor
    else
      render json: @motor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /motors/1
  def destroy
    @motor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motor
      @motor = Motor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def motor_params
      params.require(:motor).permit(:running)
    end
end
