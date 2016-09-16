class RemoveNumberFromVehicle < ActiveRecord::Migration[5.0]
  def change
    remove_column :vehicles, :number, :integer
  end
end
