class AddDayToTravels < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :day, :string
  end
end
