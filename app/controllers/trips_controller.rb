class TripsController < ApplicationController
    def index 
        trips = Trip.all
        #render json: trips.to_json(except: [:created_at, :updated_at], include: {location: {only: [:city, :state]}})
        render json: TripSerializer.new(trips)
    end
    
    def show
        trip = Trip.find_by_id(params[:id])
        render json: TripSerializer.new(trip)
    end

    def create
        # byebug
        trip = Trip.new(trip_params)
        # trip.location = Location.last ## NEEDS TO CHANGE!!!
        # byebug
        if trip.save 
            render json: TripSerializer.new(trip)
        else
            render json: {error: "Couldn't be saved"}
        end
    end

    def update
        trip = Trip.find_by_id(params[:id])
        if trip.update(trip_params)
            render json: TripSerializer.new(trip)
        else
            render json: {error: "Couldn't Update"}
        end
    end

    def destroy
        trip = Trip.find_by_id(params[:id])
        trip.destroy
        render json: {message: "Successfully deleted #{trip.name}"}
    end

    private

    def trip_params
        params.require(:trip).permit(:name, :address, :budget, :location_id, :location_name)
    end
end
