class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @boat = Boat.find(params[:boat_id])
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save

    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:arrive, :leave, :boat_id, :user_id)
  end
end
