class Crop < ApplicationRecord
  validates_uniqueness_of :name, case_sensitive: false
  has_one :setting
end
