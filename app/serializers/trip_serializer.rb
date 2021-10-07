class TripSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :address, :budget, :location_id, :location_name
  belongs_to :location
end
