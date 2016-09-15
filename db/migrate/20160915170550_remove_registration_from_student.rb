class RemoveRegistrationFromStudent < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :registration, :string
  end
end
