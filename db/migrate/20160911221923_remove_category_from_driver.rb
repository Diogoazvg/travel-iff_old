class RemoveCategoryFromDriver < ActiveRecord::Migration[5.0]
  def change
    remove_column :drivers, :Category, :string
  end
end
