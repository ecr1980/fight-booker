class RemovePassengerCapacityFromFlights < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :passenger_capacity
  end
end
