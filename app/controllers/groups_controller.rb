class GroupsController < ApplicationController
  def index
    groups = Group.all
    # if groups
      # render json: groups.as_json(only: [:username, :first_name, :last_name, :home_address, :work_address, :email, :phone_number]), status: :ok
      render json: groups.as_json(only: [:id, :trip_id, :passenger_id]), status: :ok

    # else
    #   render status: :not_found, json: { error: "Could not find a group with id: #{group.id}."}
    # end
  end

  def create
    group = Group.new(group_params)
    if group.save
      render status: :ok, json: { id: group.id}
    else
      render status: :bad_request, json: { errors: group.errors.messages }
    end
  end

  def show
    group = Group.find_by(id: params[:id])
    if group
      render json: group.as_json(), status: :ok
    else
      render status: :not_found, json: { error: "Could not find this group!"}
    end
  end

  def edit
  end

  def destroy
  end

  private
  def group_params
    return params.require(:group).permit(:trip_id, :passenger_id)
  end
end
