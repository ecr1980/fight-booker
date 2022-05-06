class ChangeFlightPassengersToFlightPassengerCapacity < ActiveRecord::Migration[7.0]
  def change
    rename_column :flights, :passengers, :passenger_capacity
  end
end
