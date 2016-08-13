class Crop < ApplicationRecord
  validates_uniqueness_of :name, case_sensitive: false
  after_save :create_default_setting
  has_one :setting
  include MaximumRecord

  def create_default_setting
    Setting.create(
      lux: {min:16,max:40},
      temp: {min:16,max:40},
      humidity: {min:16,max:40},
      crop_id: id
    );
  end
end
