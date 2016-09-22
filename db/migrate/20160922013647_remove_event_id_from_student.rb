class RemoveEventIdFromStudent < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :event_id, :integer
  end
end
