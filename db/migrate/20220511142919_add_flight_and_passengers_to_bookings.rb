class AddFlightAndPassengersToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :flight_id, :integer
    add_column :passengers, :booking_id, :integer
    add_column :passengers, :passenger_name, :string
    add_column :passengers, :passenger_email, :string
  end
end
