class ChangeFlightFlightLengthToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :flights, :flight_length, :integer
  end
end
