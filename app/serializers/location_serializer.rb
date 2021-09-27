class LocationSerializer < ActiveModel::Serializer
  attributes :id, :city, :state
  has_many :trips
end
