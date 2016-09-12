class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.integer :seat
      t.integer :number
      t.float :price

      t.timestamps
    end
  end
end
