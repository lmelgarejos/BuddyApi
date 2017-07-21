class DriversController < ApplicationController
  def index
    drivers = Driver.all
    # if drivers
      render json: drivers.as_json(only: [:id, :username, :first_name, :last_name, :home_address, :work_address, :email, :phone_number]), status: :ok
    # else
    #   render status: :not_found, json: { error: "Could not find a driver with id: #{driver.id}."}
    # end
  end

  def create
    driver = Driver.new(driver_params)
    if driver.save
      render status: :ok, json: { id: driver.id}
    else
      render status: :bad_request, json: { errors: driver.errors.messages }
    end
  end

  def show
    driver = Driver.find_by(id: params[:id])
    if driver
      render json: driver.as_json(), status: :ok
    else
      render status: :not_found, json: { error: "Could not find this driver!"}
    end
  end

  def update
    driver = Driver.find_by(id: params[:id])
    if driver.update(driver_params)
      render json: driver.as_json(), status: :ok
    else
      render json: driver.errors, status: :unprocessable_entity
    end
  end

  def destroy
    driver = Driver.find_by(id: params[:id])
    driver.destroy
    render nothing: true, status: 204
  end

  private
  def driver_params
    return params.require(:driver).permit(:username, :first_name, :last_name, :home_address, :home_zip_code, :work_address, :work_zip_code, :license_number, :email, :phone_number)
  end
end
