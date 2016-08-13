module Switchable
  def is_on?
    first.on
  end

  def is_off?
    first.on == false
  end

  def turn_on
    first.update_attributes(on: true)
  end

  def turn_off
    first.update_attributes(on: false)
  end
end
