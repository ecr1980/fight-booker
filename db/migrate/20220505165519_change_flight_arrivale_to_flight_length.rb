class ChangeFlightArrivaleToFlightLength < ActiveRecord::Migration[7.0]
  def change
    rename_column :flights, :arrival, :flight_length
  end
end
