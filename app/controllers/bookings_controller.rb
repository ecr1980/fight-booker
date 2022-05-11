class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    params[:passengers].to_i.times { @booking.passengers.build }
    @flight = Flight.find(params[:flight])
  end

  def create
    @booking = Booking.new(booking_params)
    #@flight = Flight.find(params[:flight])
    if @booking.save
      redirect_to @booking
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:passenger_name, :passenger_email])
  end
end
