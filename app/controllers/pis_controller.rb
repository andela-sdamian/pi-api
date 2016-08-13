class PisController < ApplicationController
  def create
    data = {
      temp: save_temperature,
      light: save_light,
      humidity: save_humidity,
      fan: set_fan,
      heat: set_heat,
      motor: set_motor
    }
    Statistics.create({temperature: params[:temperature], humidity: params[:humidity], lux: params[:light]})
    render json: data, status: 201
  end

  private

  def save_temperature
    Temperature.create(reading: params[:temperature])
  end

  def save_humidity
    Humidity.create(reading: params[:humidity])
  end

  def save_light
    Light.create(reading: params[:light], on: state(params[:on]))
  end

  def set_fan
    Fan.first.update(on: state(params[:fan_state]))
  end

  def set_heat
    Heat.first.update(on: state(params[:heat_state]))
  end

  def set_motor
    Motor.first.update(running: state(params[:motor_state]))
  end

  def pi_params
    params.permit(:temperature, :light, :humidity, :fan_state, :heat_state, :motor_state, :light_state)
  end

  def state(number)
    if number.to_i == 1
      true
    else
      false
    end
  end
end
