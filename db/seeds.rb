# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'date'

#Airport.delete_all
Flight.delete_all

#Airport.create(airport_code: "DTW", airport_name: "Detroit Metropolitan Wayne County Airport")
#Airport.create(airport_code: "ORD", airport_name: "Chicago O'Hare International Airport")
#Airport.create(airport_code: "JFK", airport_name: "New York Kennedy International Airport")
#Airport.create(airport_code: "LAX", airport_name: "Los Angelas International Airport")
#Airport.create(airport_code: "ANC", airport_name: "Anchorage International Airport")
#Airport.create(airport_code: "MSP", airport_name: "Minneapolis Saint Paul International Airport")
#Airport.create(airport_code: "ORL", airport_name: "Orlando Herndon")
#Airport.create(airport_code: "BOS", airport_name: "Boston Logan International Airport")
#Airport.create(airport_code: "DFW", airport_name: "Dallas/Fort Worth International Airport")
#Airport.create(airport_code: "SEA", airport_name: "Seattle/Tacoma International Airport")


10.times do |departure_index|
  depart = departure_index + 1
  500.times do
    arrival = 0
    until ((arrival != depart) && (arrival != 0)) do 
      arrival = rand(1..10)
    end
    this_flight_length = rand(1..12)
    flight_start = DateTime.new(2022,5,(11+(rand(1..10))),(rand(0...24)), rand(0...60))
    flight_date = flight_start.to_date
    Flight.create(departure_airport_id: depart, arrival_airport_id: arrival,  departure: flight_start, flight_length: this_flight_length, flight_date: flight_date)
  end
end

