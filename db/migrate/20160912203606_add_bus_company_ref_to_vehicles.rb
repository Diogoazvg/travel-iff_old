class AddBusCompanyRefToVehicles < ActiveRecord::Migration[5.0]
  def change
    add_reference :vehicles, :bus_company, foreign_key: true
  end
end
