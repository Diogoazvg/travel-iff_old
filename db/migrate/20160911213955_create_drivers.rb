class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string :cnh
      t.string :Category

      t.timestamps
    end
  end
end
