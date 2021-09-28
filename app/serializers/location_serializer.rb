class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :city, :state
  has_many :trips
end
