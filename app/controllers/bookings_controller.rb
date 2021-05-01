class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  before_action :set_bike, only: [:new, :create]

  def index
    @bookings = current_user.bookings
  end

  def show
    @bike = @booking.bike
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bike = @bike
    if @booking.save!
      redirect_to booking_path(@booking), notice: "Your request has been successfully submitted. Thank you!"
    else
      render 'bikes/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_date, :booking_message, :end_date, :status, :user_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end
end
