class FlightsController < ApplicationController
  def index
    @flights = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id], passenger_capacity: params[:passenger_capacity], flight_date: params[:date]).order(:departure)
    #@airports = Airport.order(:airport_code).all
    @airport_options = Airport.order(:airport_code).all.map{ |a| [ a.airport_code, a.id ] }
    @dates = Flight.all.map{ |d| d.departure.to_date }.uniq
    @date_options = @dates.map.with_index(1){ |d, i| [ d, i ]}.sort
  end
end
