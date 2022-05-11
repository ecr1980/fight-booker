class Flight < ApplicationRecord
  belongs_to :departing_airport,  class_name: "Airport", foreign_key: "departure_airport_id"
  belongs_to :arriving_airport, class_name: "Airport", foreign_key: "arrival_airport_id"
  has_and_belongs_to_many :passengers
  has_many :bookings

  
end
