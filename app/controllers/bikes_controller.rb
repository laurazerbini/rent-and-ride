class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_bike, only: [:show, :destroy]

  def index
    @bikes = Bike.all

    @markers = @bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        infoWindow: render_to_string(partial: "shared/map_box", locals: { bike: bike }),
        image_url: helpers.asset_url('marker.png')
      }
    end
  end

  def show
    @booking = Booking.new(bike: @bike)
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def update
    @bike = Bike.find(params[:id])
    @bike.update(bike_params)
    redirect_to bike_url(@bike)
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save!
      redirect_to bike_path(@bike)
    else
      render "new"
    end
  end

  def dashboard
    @bikes = current_user.bikes
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:bike_name, :bike_address, :bike_description, :price, :availability, :bike_url, :user_id, :photo)
  end
end
