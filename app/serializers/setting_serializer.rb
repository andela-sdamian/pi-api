class SettingSerializer < ActiveModel::Serializer
  attributes :id, :lux, :temp, :humidity
end
