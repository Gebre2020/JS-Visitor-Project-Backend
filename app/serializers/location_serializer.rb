class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :trips
end
