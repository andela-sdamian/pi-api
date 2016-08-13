class SettingsController < ApplicationController
  def index
    @settings = Setting.all

    render json: @settings
  end
end
