class AddTravelRefToVehicles < ActiveRecord::Migration[5.0]
  def change
    add_reference :vehicles, :travel, foreign_key: true
  end
end
