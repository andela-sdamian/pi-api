class CropsController < ApplicationController
  before_action :set_crop, only: [:show, :update, :destroy]

  def index
    @crops = Crop.all

    render json: @crops
  end

  def show
    render json: @crop
  end

  def create
    @crop = Crop.new(crop_params)

    if @crop.save
      render json: @crop, status: :created, location: @crop
    else
      render json: @crop.errors, status: :unprocessable_entity
    end
  end

  def update
    if @crop.update(crop_params)
      render json: @crop
    else
      render json: @crop.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @crop.destroy
  end

  private

  def set_crop
    @crop = Crop.find(params[:id])
  end

  def crop_params
    params.permit(:name)
  end
end
