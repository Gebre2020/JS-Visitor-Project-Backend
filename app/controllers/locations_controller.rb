class LocationsController < ApplicationController
    
    def index 
        locations = Location.all
        #render json: locations.to_json(except: [:created_at, :updated_at], include: {trips: {only: [:name, :address, :budget]}})
        render json: LocationSerializer.new(locations, {include: [:trips]})
    end

end
