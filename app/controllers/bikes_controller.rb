class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_bike, only: [:show]

  def index
    @bikes = Bike.all
  end

  def show
  end

  def edit
    @bikes = Bike.find(params[:id])
  end

  def update
    @bike = Bike.find(params[:id])
    @bike.update(bike_params)
    redirect_to bike_url(@bike)
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:bike_name, :bike_address, :bike_description, :price, :availability, :bike_url,
                                 :user_id)
  end
end
