class SettingSerializer < ActiveModel::Serializer
  attributes :id, :lux, :temp, :humidity, :crop_id
end
