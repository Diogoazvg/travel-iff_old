class AddPersonRefToDrivers < ActiveRecord::Migration[5.0]
  def change
    add_reference :drivers, :person, foreign_key: true
  end
end
