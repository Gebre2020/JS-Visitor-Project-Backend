class LocationsController < ApplicationController
    
    def index 
        locations = Location.all
        render json: locations
        # render json: LocationSerializer.new(locations, {include: [:trips]})
    end

end
