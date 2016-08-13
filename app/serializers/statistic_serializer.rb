class StatisticSerializer < ActiveModel::Serializer
  attributes :date, :temperature, :humidity, :lux, :box_id

  def date
    object.created_at
  end
end
