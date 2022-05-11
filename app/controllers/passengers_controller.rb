class PassengersController < ApplicationController

  def new
    @passenger = Passenger.new
  end

  def create
    @passenger = Passenger.new(passenger_params)

    if @passenger.save
    end
  end

  private
  
  def passenger_params
    params.require(:passenger).permit(:passenger_name, :passenger_email, :booking_id)
  end

end
