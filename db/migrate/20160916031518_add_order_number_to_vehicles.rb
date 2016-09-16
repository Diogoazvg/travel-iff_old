class AddOrderNumberToVehicles < ActiveRecord::Migration[5.0]
  def change
    add_column :vehicles, :order_number, :integer
  end
end
