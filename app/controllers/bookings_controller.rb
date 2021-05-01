class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  before_action :set_bike, only: [:show, :new, :create]

  def index
    @booking = Booking.all
  end

  def show
    @bike = Bike.new
    @booking = Booking.new
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bike = @bike
    if @booking.save!
      redirect_to bike_booking_path(@bike)
    else
      render 'bikes/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_date, :booking_message, :status, :user_id)
  end

  def set_booking
    @booking = Bike.find(params[:id])
  end

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end
end
