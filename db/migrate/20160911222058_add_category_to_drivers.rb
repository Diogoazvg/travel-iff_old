class AddCategoryToDrivers < ActiveRecord::Migration[5.0]
  def change
    add_column :drivers, :category, :string
  end
end
