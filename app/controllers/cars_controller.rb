class CarsController < ApplicationController
  def index
    cars = Car.all
    if cars
    render json: cars.as_json(only: [:id, :available_seats, :model, :driver_id]), status: :ok
    else
      render status: :not_found, json: { error: "Could not find a car with id: #{car.id}."}
    end
  end

  def create
    car = Car.new(car_params)
    if car.save
      render status: :ok, json: { id: car.id }
    else
      render status: :bad_request, json: { errors: car.errors.messages }
    end
  end

  def show
    car = Car.find_by(id: params[:id])
    if car
      render json: car.as_json(), status: :ok
    else
      render status: :not_found, json: { error: "Could not find this car!"}
    end
  end

  def update
    car = Car.find_by(id: params[:id])
    if car.update(car_params)
      render json: car.as_json(), status: :ok
    else
      render json: car.errors, status: :unprocessable_entity
    end
  end

  def destroy
    car = Car.find_by(id: params[:id])
    car.destroy
    render nothing: true, status: 204
  end

  private
  def car_params
    return params.require(:car).permit(:available_seats, :model, :driver_id)
  end
end
