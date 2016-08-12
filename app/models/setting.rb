class Setting < ApplicationRecord
    serialize :lux
    serialize :temp 
    serialize :humidity 

   belongs_to :crop 
end
