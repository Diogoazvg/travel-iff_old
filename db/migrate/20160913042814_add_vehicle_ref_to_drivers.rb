class AddVehicleRefToDrivers < ActiveRecord::Migration[5.0]
  def change
    add_reference :drivers, :vehicle, foreign_key: true
  end
end
