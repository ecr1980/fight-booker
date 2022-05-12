class FlightsController < ApplicationController
  def index
    @flights = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id], flight_date: params[:date]).order(:departure)
    #@airports = Airport.order(:airport_code).all
    
    @airport_options = Airport.order(:airport_code).all.map{ |a| [ a.airport_code, a.id ] }
    @dates = Flight.all.map{ |d| d.departure.to_date }.uniq.sort
    @date_options = @dates.map.with_index(1){ |d, i| [ d, i ]}
  end
end
