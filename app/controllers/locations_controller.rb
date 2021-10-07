class LocationsController < ApplicationController
    
    def index 
        locations = Location.all
        #render json: locations.to_json(except: [:created_at, :updated_at], include: {trips: {only: [:name, :address, :budget]}})
        render json: LocationSerializer.new(locations)
    end

    def create
       location = Location.new(location_params)
        if location.save
           # render json: location
            render json: LocationSerializer.new(location)
        else
            render json: {error: "Couldn't save"}
        end
    end

    private

    def location_params
        params.require(:location).permit(:name)
    end

end
