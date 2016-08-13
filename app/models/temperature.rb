class Temperature < ApplicationRecord
  include MaximumRecord
  before_save :check_settings
end
