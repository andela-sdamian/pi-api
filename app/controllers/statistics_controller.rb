class StatisticsController < ApplicationController
  before_action :set_statistic, only: [:show, :update, :destroy]

  # GET /statistics
  def index
     if params[:last] 
        @statistics = Statistic.last 
     else 
        @statistics = Statistic.all
     end 

    render json: @statistics
  end

  # GET /statistics/1
  def show
    render json: @statistic
  end

  # POST /statistics
  def create
    @statistic = Statistic.new(statistic_params)

    if @statistic.save
      render json: @statistic, status: :created, location: @statistic
    else
      render json: @statistic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /statistics/1
  def update
    if @statistic.update(statistic_params)
      render json: @statistic
    else
      render json: @statistic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /statistics/1
  def destroy
    @statistic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statistic
      @statistic = Statistic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def statistic_params
      params.permit(:temeprature, :humidity, :lux)
    end
end
