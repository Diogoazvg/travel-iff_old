class RemoveDayFromTravel < ActiveRecord::Migration[5.0]
  def change
    remove_column :travels, :day, :date
  end
end
