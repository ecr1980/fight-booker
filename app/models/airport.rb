class Airport < ApplicationRecord
  has_many :departures, inverse_of: "departing_airport"
  has_many :arrivals, inverse_of: "arriving_airport"
end
