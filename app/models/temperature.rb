class Temperature < ApplicationRecord
  include MaximumRecord
  before_save :check_setting

  def turn_fan_on
    Fan.first.update_attributes(on: true)
  end

  def turn_fan_off
    Fan.first.update_attributes(on: false)
  end

  def turn_heater_on
    Heat.first.update_attributes(on: true)
  end

  def turn_heater_off
    Heat.first.update_attributes(on: false)
  end

  def check_setting
    turn_fan_on if reading > Setting.last.temp[:max]
    turn_fan_off if reading < Setting.last.temp[:min]
    turn_heater_on if reading < Setting.last.temp[:min]
    turn_heater_off if reading > Setting.last.temp[:max]
  end
end
