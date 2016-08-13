class Temperature < ApplicationRecord
  include MaximumRecord
  before_save :check_setting

  def check_setting
    Fan.turn_on if reading > Setting.last.temp[:max] && Fan.is_off?
    Fan.turn_off if reading < Setting.last.temp[:min] && Fan.is_on?

    Heat.turn_on if reading < Setting.last.temp[:min] && Heat.is_off?
    Heat.turn_off if reading > Setting.last.temp[:max] && Heat.is_on?
  end
end
