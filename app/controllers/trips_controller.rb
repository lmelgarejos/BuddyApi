class TripsController < ApplicationController
  def index
    trips = Trip.all
    # if trips
      render json: trips.as_json(only: [:id, :date, :departure_time, :driver_id, :car_id]), status: :ok
    # else
    #   render status: :not_found, json: { error: "Could not find a trip with id: #{trip.id}."}
    # end
  end

  def create
    trip = Trip.new(trip_params)
    if trip.save
      render status: :ok, json: { id: trip.id}
    else
      render status: :bad_request, json: { errors: trip.errors.messages }
    end
  end

  def show
    trip = Trip.find_by(id: params[:id])
    if trip
      render json: trip.as_json(), status: :ok
    else
      render status: :not_found, json: { error: "Could not find this trip"}
    end
  end

  def update
    trip = Trip.find_by(id: params[:id])
    if trip.update(trip_params)
      render json: trip.as_json(), status: :ok
    else
      render json: trip.errors, status: :unprocessable_entity
    end
  end

  def destroy
    trip = Trip.find_by(id: params[:id])
    trip.destroy
    render nothing: true, status: 204
  end

  private
  def trip_params
    return params.require(:trip).permit(:date, :departure_time, :driver_id, :car_id)
  end


end
