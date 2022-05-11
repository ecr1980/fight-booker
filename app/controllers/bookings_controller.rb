class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight])
  end

  def create
    @booking = Booking.new
    @flight = Flight.find(params[:flight])
    @booking.save
  end
end
