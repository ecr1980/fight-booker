class Flight < ApplicationRecord
  belongs_to :departing_airport, class_name: "Airport"
  belongs_to :arriving_airport, class_name: "Airport"
  has_and_belongs_to_many :passengers, class_name: "User"
end
