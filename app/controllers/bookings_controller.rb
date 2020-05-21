class BookingsController < ApplicationController
  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @boat = Boat.find(params[:boat_id])
    @booking.boat = @boat
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @boat = Boat.find(params[:boat_id])
    @booking.boat = @boat
    @booking.user = current_user
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
  end

  def index
    @bookings = Booking.all
    @boat = Boat.find(params[:boat_id])
    @booking.boat = @boat
    @booking.user = current_user
  end

  private

  def booking_params
    params.require(:booking).permit(:arrive, :leave, :user_id, :boat_id)
  end
end
