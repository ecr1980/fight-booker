class AddFlightInfoToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :departure, :datetime
    add_column :flights, :arrival, :datetime
    add_column :flights, :departure_airport_id, :integer
    add_column :flights, :arrival_airport_id, :integer
  end
end
