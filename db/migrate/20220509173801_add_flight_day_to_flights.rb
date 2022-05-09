class AddFlightDayToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :flight_date, :string
  end
end
