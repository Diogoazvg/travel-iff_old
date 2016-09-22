class RemoveTravelIdFromStudent < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :travel_id, :integer
  end
end
