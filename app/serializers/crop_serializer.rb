class CropSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :setting
end
