class PassengersController < ApplicationController
  before_action :authenticate_user!

  def index
    passengers = Passenger.all
    # if passengers
      render json: passengers.as_json(only: [:id, :username, :first_name, :last_name, :home_address, :work_address, :email, :phone_number]), status: :ok
    # else
    #   render status: :not_found, json: { error: "Could not find a passenger with id: #{passenger.id}."}
    # end
  end

  def create
    passenger = Passenger.new(passenger_params)
    if passenger.save
      render status: :ok, json: { id: passenger.id}
    else
      render status: :bad_request, json: { errors: passenger.errors.messages }
    end
  end

  def show
    passenger = Passenger.find_by(id: params[:id])
    if passenger
      render json: passenger.as_json(), status: :ok
    else
      render status: :not_found, json: { error: "Could not find this passenger!"}
    end
  end

  def update
    passenger = Passenger.find_by(id: params[:id])
    if passenger.update(passenger_params)
      render json: passenger.as_json(), status: :ok
    else
      render json: passenger.errors, status: :unprocessable_entity
    end
  end

  def destroy
    passenger = Passenger.find_by(id: params[:id])
    passenger.destroy
    render nothing: true, status: 204
  end

  private
  def passenger_params
    return params.require(:passenger).permit(:username, :first_name, :last_name, :home_address, :home_zip_code, :work_address, :work_zip_code, :license_number, :email, :phone_number, :user_id)
  end

end
