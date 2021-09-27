class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :budget, :location_id
  belongs_to :location
end
