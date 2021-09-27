class TripsController < ApplicationController
    def index 
        trips = Trip.all
        render json: trips
        # render json: TripSerializer.new(trips, {include: [:items]})
    end
end
