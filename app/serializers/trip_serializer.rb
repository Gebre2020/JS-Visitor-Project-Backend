class TripSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :address, :budget, :location_id
  belongs_to :location
end
